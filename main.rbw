$:.unshift(File.dirname(__FILE__))

require "Qt4"

#db
require "active_record"
require "squeel"

#module
require "csv"
require "date"
require "./module/Ui_settings.rb"
require "./module/export.rb"
require "./module/rb.rb"
require "./module/crutch.rb"
require "./module/Widgets/PoPaginator.rb"
require "./module/Widgets/PoTreeWidget.rb"
require "./module/Widgets/PoTableComboBox.rb"
require "./module/settings.rb"
require "./module/adv_qt.rb"

#db

require "./database/S11.rb"

#forms


require "Application.rb"
require "ui_search_window.rb"
require "Search_window.rb"

#login
require "ui_login_window.rb"
require "Login_window.rb"






#begin
$qApp = Application.new(ARGV)
#Qt.debug_level = Qt::DebugLevel::High
#Qt::Internal::setDebug(Qt::QtDebugChannel::QTDB_GC)
$qApp.exec();
#rescue
  #print "какая то ошибка\n"
  
#end



