module S11
  class ClientContact < S11ActiveRecord::Base
    self.table_name = "ClientContact"
    belongs_to :client, foreign_key: "client_id"
  end
end