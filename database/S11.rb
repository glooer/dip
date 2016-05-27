
#require "active_record"

require "./database/S11_settings.rb"

'''
require "./database/tables/Client.rb"
require "./database/tables/RbAccountingSystem.rb"
require "./database/tables/RbBloodType.rb"
require "./database/tables/ClientIdentification.rb"
require "./database/tables/ClientContact.rb"
require "./database/tables/RbDocumentType.rb"
require "./database/tables/ClientDocument.rb"
require "./database/tables/ClientAddress.rb"
require "./database/tables/Address.rb"
require "./database/tables/AddressHouse.rb"
require "./database/tables/Street.rb"
require "./database/tables/Kladr.rb"
require "./database/tables/_rbKladrArea.rb"
require "./database/tables/Event.rb"
'''
#драл я всё это ручками подключать.
Dir[File.dirname(__FILE__) + "/tables/*.rb"].each{ |file| require file }
