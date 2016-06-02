module S11
  class ClientSocStatus < S11ActiveRecord::Base
    self.table_name = "ClientSocStatus"
    belongs_to :rbSocStatusClass, foreign_key: "socStatusClass_id"
    belongs_to :rbSocStatusType, foreign_key: "socStatusType_id"
    belongs_to :client, foreign_key: "client_id"
  end
end