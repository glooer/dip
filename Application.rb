class Application < Qt::Application
  attr_reader :settings

  def initialize *args
    super
    #S11::RbBloodType.select("NULL").take(1) #костыль шоб ActiveRecord разбудить до ввода логина, ибо он долго грузится.
    #if true
    if Login_window.new.exec == 1
      @ui = Search_window.new
      @ui.setup_ui_settings
      @ui.show
    else
      exit
    end
    
  end

end