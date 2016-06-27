module S11
  class Action < S11ActiveRecord::Base
    self.table_name = "Action"
    belongs_to :event, foreign_key: "event_id"
    belongs_to :actionType, foreign_key: "actionType_id"
  end
end