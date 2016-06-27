ActiveRecord::Base.logger = Logger.new(STDERR)

module S11ActiveRecord
  class Base < ActiveRecord::Base
    @abstract_class = true
    
    settings = AppSettings.new(Qt::Settings::IniFormat, Qt::Settings::UserScope, "samson-vista", "S11App")
    establish_connection(
      :adapter => "mysql2",  
      :port => settings.value("db/serverPort").value || 42424,
      :host => settings.value("db/serverName").value || "polenkov.ru",
      :username => settings.value("db/userName").value || "samson",
      :password => settings.decryptPassword(settings.value("db/encryptedPassword").value || "#1##eNorTSzmKk7MLc7PAwAU0wPl"),
      :database => settings.value("db/database").value || "s11"
    )
  end
  
  
  
end


