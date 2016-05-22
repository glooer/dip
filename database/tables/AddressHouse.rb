module S11
  class AddressHouse < S11ActiveRecord::Base
    self.table_name = "AddressHouse"
    
    self.inheritance_column = :_type_disabled
    belongs_to :has_one, foreign_key: "house_id"  
    has_many :street, table_name: "kladr.STREET", foreign_key: "CODE", primary_key: "KLADRStreetCode"
    has_many :kladr, table_name: "kladr.KLADR", foreign_key: "CODE", primary_key: "KLADRCode"
  end
end