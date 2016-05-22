module S11
  class Street < S11ActiveRecord::Base
    self.table_name = "kladr.STREET"
    belongs_to :addressHouse, foreign_key: "house_id" 
  end
end