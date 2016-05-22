module S11
  class RbBloodType < S11ActiveRecord::Base
    self.table_name = "rbBloodType"
    has_many :client, foreign_key: "bloodType_id"
  end
end