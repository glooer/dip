module S11
  class Person < S11ActiveRecord::Base
    self.table_name = "Person"
    
    has_many :eventPerson, foreign_key: "execPerson_id"
  end
end