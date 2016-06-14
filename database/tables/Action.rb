module S11
  class Action < S11ActiveRecord::Base
    self.table_name = "Action"
    belongs_to :event, foreign_key: "event_id"
    belongs_to :actionType, foreign_key: "actionType_id"
    
    #костыли. Ибо в ActionType есть столбик class, то activeRecord умирает
    #def self.actionTypeGet(:limit => nil, :offset => nil, )
    #  sql = "SELECT * FROM  `ActionType`"
    #end
    
    
  end
end