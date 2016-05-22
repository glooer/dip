module S11
  class ClientDocument < S11ActiveRecord::Base
    self.table_name = "ClientDocument"
    belongs_to :client, foreign_key: "client_id"
    belongs_to :rbDocumentType, foreign_key: "documentType_id"
  end
end