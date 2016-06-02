module S11
  class RbSocStatusClass < S11ActiveRecord::Base
    self.table_name = "rbSocStatusClass"
    has_many :clientSocStatus, foreign_key: "socStatusClass_id"
    
  end
end