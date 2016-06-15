ActiveRecord::Base.logger = Logger.new(STDERR)

module S11ActiveRecord
  class Base < ActiveRecord::Base
    @abstract_class = true
    
    settings = AppSettings.new(Qt::Settings::IniFormat, Qt::Settings::UserScope, "samson-vista", "S11App")
    establish_connection(
      :adapter => "mysql2",  
      :port => settings.value("db/serverPort").toString,
      :host => settings.value("db/serverName").toString,
      :username => settings.value("db/userName").toString,
      :password => settings.decryptPassword(settings.value("db/encryptedPassword").toString),
      :database => settings.value("db/database").toString
    )
  end
  
  
  
end


