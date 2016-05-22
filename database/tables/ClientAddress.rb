module S11
  class ClientAddress < S11ActiveRecord::Base
    self.table_name = "ClientAddress"
    self.inheritance_column = :_type_disabled
    belongs_to :client, foreign_key: "client_id"
    belongs_to :address, foreign_key: "address_id"

    
  end
end