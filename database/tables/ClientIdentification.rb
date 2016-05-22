module S11
  class ClientIdentification < S11ActiveRecord::Base
    self.table_name = "ClientIdentification"
    belongs_to :client, foreign_key: "client_id"
    belongs_to :rbAccountingSystem, foreign_key: "identifier"
  end
end