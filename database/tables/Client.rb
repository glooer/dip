module S11
  class Client < S11ActiveRecord::Base
    self.table_name = "Client"
    
    def self.with_sex(as = "Пол")
      select("IF(Client.sex = 1, 'М', 'Ж') as '#{as}'")
    end
    
    def self.with_age(as = "Возраст")
      select("YEAR(CURDATE()) - YEAR(Client.birthDate) - (DATE_FORMAT(CURDATE(), '%m%d') < DATE_FORMAT(Client.birthDate, '%m%d')) as #{as}")
    end
    
    def self.with_addressType
      select("IF(ClientAddress.type = 0, 'Проживания', 'Регистрации') as 'Тип адреса'")
    end#остановился на добавлении адреса, нужно делать выборку и шарашить её в join
    
    def self.with_clientIdentification n, as
      select("(SELECT `ClientIdentification`.`identifier` FROM `ClientIdentification` WHERE `ClientIdentification`.`client_id` = `Client`.`id` AND `ClientIdentification`.`accountingSystem_id` = #{n} LIMIT 1) as '#{as}'")
    end
    
    belongs_to :rbBloodType, foreign_key: "bloodType_id"
    
    has_many :clientIdentification, foreign_key: "client_id"
    has_many :rbAccountingSystem, through: :clientIdentification#не тестировал.
    
    has_many :clientDocument, foreign_key: "client_id"
    has_many :rbDocumentType, through: :clientDocument#не тестировал.
    
    
    has_many :event, foreign_key: "client_id"
    has_many :eventType, :through => :event
    has_many :rbResult, :through => :event
    has_many :contract, :through => :event
    has_many :rbFinance, :through => :contract
    has_many :mes, :through => :event
    has_many :eventPerson, :through => :event
    
    
    has_many :action, :through => :event
    has_many :actionType, :through => :action
    
    def self.with_eventRange(as = "Длительность лечения")
      select("DATEDIFF( Event.execDate, Event.setDate ) as '#{as}'")
    end
    
    def self.joins_ares
      joins{ kladr.outer }.joins("LEFT OUTER JOIN (SELECT `kladr`.`KLADR`.`prefix`, CONCAT(`kladr`.`KLADR`.`NAME`, ' ', `kladr`.`KLADR`.`SOCR`) as AREA FROM `kladr`.`KLADR` WHERE `kladr`.`KLADR`.`parent` = '' GROUP BY `kladr`.`KLADR`.`prefix`) as kladrAREA ON kladrAREA.prefix = `kladr`.`KLADR`.`prefix`")
    end
    
    def self.with_ares
      select("kladrAREA.AREA as 'Область'").joins_ares
    end
    
    #def self.join_clientAddress(q)
    #  joins("LEFT JOIN ClientAddress ON ClientAddress.client_id = Client.id AND ClientAddress.id = (SELECT MAX(id) FROM ClientAddress AS CA WHERE CA.Type=#{q} and CA.client_id = Client.id)")
    #end
    # что за address_id == 14 ???
    has_many :clientAddress, -> { where("ClientAddress.id IN (SELECT id FROM ClientAddress AS CA WHERE CA.client_id = Client.id GROUP BY type)") }
    has_many :address, :through => :clientAddress
    has_many :addressHouse, :through => :address
    has_many :street, through: :addressHouse, table_name: "kladr.STREET", foreign_key: "CODE", primary_key: "KLADRStreetCode"
    has_many :kladr, through: :addressHouse, table_name: "kladr.KLADR", foreign_key: "CODE", primary_key: "KLADRCode"
    #user.roles << role unless user.roles.include?(role)
    
   
    #has_many :addressHouse, through: :address
    #has_many :street, through: :addressHouse, table_name: "kladr.STREET", foreign_key: "CODE", primary_key: "KLADRStreetCode"
    #has_many :kladr, through: :addressHouse, table_name: "kladr.KLADR", foreign_key: "CODE", primary_key: "KLADRCode"
    
    has_many :clientContact, foreign_key: "client_id"
    
    def self.with_socStatus(id, name)
      select("(SELECT SOC.name FROM ClientSocStatus as CSS INNER JOIN rbSocStatusType as SOC ON CSS.socStatusType_id = SOC.id WHERE CSS.client_id = Client.id AND CSS.socStatusClass_id = #{id} LIMIT 1) as '#{name}'")
    end
    
    def self.with_department
      select("(SELECT OrgStructure.name FROM `Action` INNER JOIN `ActionProperty` ON `Action`.id = `ActionProperty`.action_id INNER JOIN `ActionProperty_OrgStructure` ON `ActionProperty`.id = `ActionProperty_OrgStructure`.id INNER JOIN `OrgStructure` ON `OrgStructure`.id = `ActionProperty_OrgStructure`.value WHERE `Action`.event_id = `Event`.id  and `Action`.actionType_id = 113 AND `ActionProperty`.type_id = 1699 ORDER BY `Action`.id DESC LIMIT 1) as 'Отделение'")
    end
    
    has_many :clientSocStatus, -> { where("ClientSocStatus.id IN (SELECT MAX(id) FROM ClientSocStatus as CSS WHERE CSS.client_id = ClientSocStatus.client_id GROUP BY CSS.socStatusClass_id, CSS.client_id)") }, foreign_key: "client_id"
    
    has_many :rbSocStatusType, :through => :clientSocStatus
  end
end