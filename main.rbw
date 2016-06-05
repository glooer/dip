$:.unshift(File.dirname(__FILE__))

#forms
require "Qt4"
require "./module/settings.rb"
require "./module/adv_qt.rb"
require "Application.rb"
require "ui_search_window.rb"
require "Search_window.rb"


#db
require "active_record"
require "squeel"
require "./database/S11.rb"

#module
require "csv"
require "date"
require "./module/export.rb"
require "./module/rb.rb"
require "./module/crutch.rb"
require "./module/QaTreeWidget.rb"
require "./module/QaTreeWidgetActionType.rb"





$qApp = Application.new(ARGV)
$qApp.exec();


