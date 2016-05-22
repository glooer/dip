ActiveRecord::Base.logger = Logger.new(STDERR)

module S11ActiveRecord
  class Base < ActiveRecord::Base
    @abstract_class = true
    establish_connection(
      :adapter => "mysql2",  
      :port => "42424",
      :host => "polenkov.ru", 
      :username => "samson",
      :password => "samson",
      :database => "s11"
    )
    
    
    def self.select!(*args)
      self.select(args)
      p self.instance_methods
    end
  end
  
  
  
end


