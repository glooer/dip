module S11
  class RbSocStatusType < S11ActiveRecord::Base
    self.table_name = "rbSocStatusType"
    has_many :clientSocStatus, foreign_key: "socStatusType_id"
  end
end