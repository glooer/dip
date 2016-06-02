module S11
  class Mes < S11ActiveRecord::Base
    self.table_name = "mes.MES"
    
    has_one :event, foreign_key: "MES_id"

    
  end
end