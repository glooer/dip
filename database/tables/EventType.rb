module S11
  class EventType < S11ActiveRecord::Base
    self.table_name = "EventType"
    has_one :event, foreign_key: "eventType_id"
    
  end
end