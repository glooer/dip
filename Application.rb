class Application < Qt::Application
  def initialize(argv)
    super(argv)
    @ui = Search_window.new
    @ui.show
  end

end