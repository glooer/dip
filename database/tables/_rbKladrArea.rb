module S11
  class RbKladrArea < S11ActiveRecord::Base
    self.table_name = "kladr.KLADR"
    
    #self.connection = ("SELECT CONCAT(`kladr`.`KLADR`.`NAME`, ' ', `kladr`.`KLADR`.`SOCR`) as name, `kladr`.`KLADR`.`prefix` FROM `kladr`.`KLADR` WHERE `kladr`.`KLADR`.`parent` = '' GROUP BY `kladr`.`KLADR`.`prefix` ORDER BY CONCAT(`kladr`.`KLADR`.`NAME`, ' ', `kladr`.`KLADR`.`SOCR`) ASC")
  end
end