module S11
  class Client < S11ActiveRecord::Base
    self.table_name = "Client"
    
    def self.with_sex(as = "Пол")
      select("IF(Client.sex = 1, 'М', 'Ж') as #{as}")
    end
    
    def self.with_age(as = "Возраст")
      select("YEAR(CURDATE()) - YEAR(Client.birthDate) - (DATE_FORMAT(CURDATE(), '%m%d') < DATE_FORMAT(Client.birthDate, '%m%d')) as #{as}")
    end
    
    def self.with_addressType
      select("IF(ClientAddress.type = 0, 'Проживания', 'Регистрации') as 'Тип адреса'")
    end#остановился на добавлении адреса, нужно делать выборку и шарашить её в join
    
    belongs_to :rbBloodType, foreign_key: "bloodType_id"
    
    has_many :clientIdentification, foreign_key: "client_id"
    has_many :rbAccountingSystem, through: :clientIdentification#не тестировал.
    
    has_many :clientDocument, foreign_key: "client_id"
    has_many :rbDocumentType, through: :clientDocument#не тестировал.
    
    def self.with_ares
      select("kladrAREA.AREA as 'Область'").joins{ kladr.outer }.joins("LEFT OUTER JOIN (SELECT `kladr`.`KLADR`.`prefix`, CONCAT(`kladr`.`KLADR`.`NAME`, ' ', `kladr`.`KLADR`.`SOCR`) as AREA FROM `kladr`.`KLADR` WHERE `kladr`.`KLADR`.`parent` = '' GROUP BY `kladr`.`KLADR`.`prefix`) as kladrAREA ON kladrAREA.prefix = `kladr`.`KLADR`.`prefix`")
    end
    
    #def self.join_clientAddress(q)
    #  joins("LEFT JOIN ClientAddress ON ClientAddress.client_id = Client.id AND ClientAddress.id = (SELECT MAX(id) FROM ClientAddress AS CA WHERE CA.Type=#{q} and CA.client_id = Client.id)")
    #end
    # что за address_id == 14 ???
    has_many :clientAddress, -> { where("ClientAddress.id IN (SELECT MAX(id) FROM ClientAddress AS CA WHERE CA.client_id = Client.id and CA.address_id != 14 GROUP BY type)") }
    has_many :address, :through => :clientAddress
    has_many :addressHouse, :through => :address
    has_many :street, through: :addressHouse, table_name: "kladr.STREET", foreign_key: "CODE", primary_key: "KLADRStreetCode"
    has_many :kladr, through: :addressHouse, table_name: "kladr.KLADR", foreign_key: "CODE", primary_key: "KLADRCode"
    #user.roles << role unless user.roles.include?(role)
    
   
    #has_many :addressHouse, through: :address
    #has_many :street, through: :addressHouse, table_name: "kladr.STREET", foreign_key: "CODE", primary_key: "KLADRStreetCode"
    #has_many :kladr, through: :addressHouse, table_name: "kladr.KLADR", foreign_key: "CODE", primary_key: "KLADRCode"
    
    has_many :clientContact, foreign_key: "client_id"
  end
end