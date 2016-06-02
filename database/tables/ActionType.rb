module S11
  class ActionType < S11ActiveRecord::Base
    self.table_name = "ActionType"
    
    #в таблице есть столбец class, по этому activerecord приходится исправлять
    def self.instance_method_already_implemented?(method_name)
     return true if method_name == 'class'
     super
    end
    
    
  end
end