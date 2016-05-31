module S11
  class Contract < S11ActiveRecord::Base
    self.table_name = "Contract"
    has_one :event, foreign_key: "contract_id" 
    belongs_to :rbFinance, foreign_key: "finance_id"
  end
end