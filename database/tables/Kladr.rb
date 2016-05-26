module S11
  class Kladr < S11ActiveRecord::Base
  
    self.table_name = "kladr.KLADR"
    @user_cache_city = {}
    @user_cache_street = {}
    def self.getAreas
      #select("CONCAT(`kladr`.`KLADR`.`NAME`, ' ', `kladr`.`KLADR`.`SOCR`) as name, `kladr`.`KLADR`.`prefix`").where("`kladr`.`KLADR`.`parent` = ''").group("`kladr`.`KLADR`.`prefix`").order("`kladr`.`KLADR`.`NAME`")
      select("CONCAT(`kladr`.`KLADR`.`NAME`, ' ', `kladr`.`KLADR`.`SOCR`) as name, `kladr`.`KLADR`.`prefix`").where("`kladr`.`KLADR`.`CODE` like '___0000000000'").order("`kladr`.`KLADR`.`NAME`")
    end
    
    def self.getCityByArea(area) #почему то к префиксу (45 например) нужно добавлять 0, потом надо разобраться, то ли это на будущее, то ли хз. МОЖЕЬ РАБОТАЬ НЕ ПРАВИЛЬНО
      #activerecord не понимает как такое кэшировать, по этому придется ручками.
      if @user_cache_city[area]
        @user_cache_city[area]
      else
        sql = "(SELECT  CONCAT(`kladr`.`KLADR`.`NAME`, ' ', `kladr`.`KLADR`.`SOCR`) as name, `kladr`.`KLADR`.`GNINMB` FROM `kladr`.`KLADR` WHERE parent = #{area}0 and `kladr`.`KLADR`.`INDEX` = '') UNION (SELECT CONCAT(`kladr`.`KLADR`.`NAME`, ' ', `kladr`.`KLADR`.`SOCR`) as name, `kladr`.`KLADR`.`GNINMB` FROM `kladr`.`KLADR` WHERE parent = #{area}0 and `kladr`.`KLADR`.`INDEX` != '' GROUP BY `kladr`.`KLADR`.`INDEX`) ORDER BY `NAME` ASC"
        @user_cache_city[area] = S11ActiveRecord::Base.connection.exec_query(sql) #к - костыли
      end
    end
    
    def self.getStreetByCity(city)
      if @user_cache_street[city]
        @user_cache_street[city]
      else
        sql = "SELECT CONCAT(`kladr`.`STREET`.`NAME`, ' ', `kladr`.`STREET`.`SOCR`) as name, `kladr`.`STREET`.`CODE` FROM `kladr`.`STREET` where `kladr`.`STREET`.`GNINMB` = #{city} and `kladr`.`STREET`.`code` like '________000____00'"
        @user_cache_street[city] = S11ActiveRecord::Base.connection.exec_query(sql)
      end
    end
  end
end