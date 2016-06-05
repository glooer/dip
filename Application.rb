class Application < Qt::Application
  attr_reader :settings

  def initialize(argv)
    super(argv)
    @ui = Search_window.new
    @ui.show
    
    
   
  end

end