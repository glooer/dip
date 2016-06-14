module S11
  class RbPost < S11ActiveRecord::Base
    self.table_name = "rbPost"
    has_many :person, foreign_key: "post_id"
    
    
  end
end