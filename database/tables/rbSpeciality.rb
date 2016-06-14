module S11
  class RbSpeciality < S11ActiveRecord::Base
    self.table_name = "rbSpeciality"
    has_many :person, foreign_key: "speciality_id"
  end
end