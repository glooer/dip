require "base64"
require "zlib"

class AppSettings < Qt::Settings
  @widgets_for_save_settings_size = ["tableView"]
  @widgets_for_save_settings_checked = ["menu_Event_sub"]  
  
  def value field, default = Qt::Variant.new(nil)
    super field, Qt::Variant.new(default)
  end
    
  class << self
    
  
    def setup_ui window, ui
      ui.splitter.setStretchFactor 0, 1
      set = self.new "ui.ini", Qt::Settings::IniFormat
      set.beginGroup "Ui"
      
      
      set.value("geometry").value and window.restoreGeometry(set.value("geometry").value)
      set.value("state").value and window.restoreState(set.value("state").value)
      
      
      @widgets_for_save_settings_size.each do |name|
        if set.value("#{name}_size_y").toString != "" and set.value("#{name}_size_x").toString != ""
          ui.itemByName(name).resize set.value("#{name}_size_x").to_i, set.value("#{name}_size_y").to_i
        end
      end
      
      @widgets_for_save_settings_checked.each do |name|
        if set.value("#{name}_checked").toString != ""
          ui.itemByName(name).checked = set.value("#{name}_checked").toString == "true" ? true : false
        end
      end
      
      ui.menubar.findChildren(Qt::Menu).map(&:actions).flatten.select{ |v| v.objectName and v.checkable }.each do |name|
        if not set.value("#{name.objectName}_checked").toString.nil?
          name.checked = set.value("#{name.objectName}_checked").toString == "true" ? true : false
        end
      end
      

      name = "paginator"
      if set.value("#{name}_index").toString != ""
        ui.itemByName(name).setIndexPagesSizeSelecter set.value("#{name}_index").to_i
      end
      #set.setValue(name + "_index", Qt::Variant.new(@ui.itemByName(name).currentIndexPagesSizeSelecter))
      
      set.endGroup
    end
    
    def save_ui window, ui
      set = Qt::Settings.new("ui.ini", Qt::Settings::IniFormat)
      set.beginGroup("Ui")
      
      #window
      set.setValue("state", Qt::Variant.new(window.saveState))
      set.setValue("geometry", Qt::Variant.new(window.saveGeometry))
      
      @widgets_for_save_settings_size.each do |name|
        set.setValue(name + "_size_x", Qt::Variant.new(ui.itemByName(name).size.width))
        set.setValue(name + "_size_y", Qt::Variant.new(ui.itemByName(name).size.height))
      end
      
      @widgets_for_save_settings_checked.each do |name|
        set.setValue(name + "_checked", Qt::Variant.new(ui.itemByName(name).checked))
      end
      
      ui.menubar.findChildren(Qt::Menu).map(&:actions).flatten.select{ |v| v.objectName and v.checkable }.each do |name|
        set.setValue(name.objectName + "_checked", Qt::Variant.new(name.checked?))
      end
      
      name = "paginator"
      set.setValue(name + "_index", Qt::Variant.new(ui.itemByName(name).currentIndexPagesSizeSelecter))
      
      set.endGroup
    end
  end
  
  def initialize *args
    super
  end

  def decryptPassword pwd
    Zlib::Inflate.inflate(Base64.decode64(pwd[4..-1])).split("\n").last
  end
  
  
  
end

#settings = Qt::Settings.new(Qt::Settings::IniFormat, Qt::Settings::UserScope, "samson-vista", "S11App")