module S11
  class RbResult < S11ActiveRecord::Base
    self.table_name = "rbResult"
    has_one :event, foreign_key: "result_id"
    
  end
end