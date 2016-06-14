module S11
  class Person < S11ActiveRecord::Base
    self.table_name = "Person"
    belongs_to :rbPost, foreign_key: "post_id"
    belongs_to :rbSpeciality, foreign_key: "speciality_id"
    belongs_to :orgStructure, foreign_key: "orgStructure_id"
    
    has_many :eventPerson, foreign_key: "execPerson_id"
  end
end