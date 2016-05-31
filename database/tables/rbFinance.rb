module S11
  class RbFinance < S11ActiveRecord::Base
    self.table_name = "rbFinance"
    has_one :contract, foreign_key: "finance_id"
    
  end
end