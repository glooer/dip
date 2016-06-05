require "base64"
require "zlib"

class AppSettings < Qt::Settings
  def initialize *args
    super
  end

  def decryptPassword pwd
    Zlib::Inflate.inflate(Base64.decode64(pwd[4..-1])).split("\n").last
  end
  
end

#settings = Qt::Settings.new(Qt::Settings::IniFormat, Qt::Settings::UserScope, "samson-vista", "S11App")