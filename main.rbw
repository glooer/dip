$:.unshift(File.dirname(__FILE__))

#forms
require "Qt4"
require "./module/adv_qt.rb"
require "Application.rb"
require "ui_search_window.rb"
require "Search_window.rb"


#db
require "active_record"
require "squeel"
require "./database/S11.rb"



app = Application.new(ARGV)
app.exec();


