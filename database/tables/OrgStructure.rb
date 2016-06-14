module S11
  class OrgStructure < S11ActiveRecord::Base
    self.table_name = "OrgStructure"
    has_many :person, foreign_key: "orgStructure_id"
  end
end