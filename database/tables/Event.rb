module S11
  class Event < S11ActiveRecord::Base
    self.table_name = "Event"
    
    belongs_to :client, foreign_key: "client_id"
    belongs_to :eventType, foreign_key: "eventType_id"
    belongs_to :rbResult, foreign_key: "result_id"
    belongs_to :contract, foreign_key: "contract_id"
    belongs_to :rbFinance, foreign_key: "finance_id"
    
    
  end
end