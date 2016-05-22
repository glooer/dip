module S11
  class Address < S11ActiveRecord::Base
    self.table_name = "Address"
    has_one :clientAddress, foreign_key: "address_id"
    has_one :client, through: :clientAddress
    belongs_to :addressHouse, foreign_key: "house_id"
  end
end