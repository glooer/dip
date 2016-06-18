class PoPaginator < Qt::Widget
  slots "_update_index(QString)", "pages_prev()", "pages_next()", "pages_stat()", "test(int)"
  signals "currentPageChanged(int)"
  
  def initialize parent = 0, pages_size_select = [30, 50, 100, 500, 1000]
    super parent
    
    @layout = Qt::HBoxLayout.new self
    
    self.setLayout @layout
    @layout.setContentsMargins(0, 0, 0, 0)
    @pages_selecter = Qt::ComboBox.new self
    @pages_navig_left = Qt::ToolButton.new self do
      self.text = "<"
    end
    @pages_navig_right = Qt::ToolButton.new self do
      self.text = ">"
    end
    @pages_size_selecter = Qt::ComboBox.new self do
      self.insertItems(0, pages_size_select.map(&:to_s))
    end
    
    @layout.addWidget @pages_navig_left
    @layout.addWidget @pages_selecter
    @layout.addWidget @pages_navig_right
    @layout.addItem Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)
    @layout.addWidget @pages_size_selecter
    update(0)
    
    #@old_size = currentSize
    
    connect(@pages_size_selecter, SIGNAL("currentIndexChanged(QString)"), SLOT("_update_index(QString)"))
    connect(@pages_selecter, SIGNAL("currentIndexChanged(int)"), SLOT("pages_stat()"))
    connect(@pages_navig_left, SIGNAL("clicked()"), SLOT("pages_prev()"))
    connect(@pages_navig_right, SIGNAL("clicked()"), SLOT("pages_next()"))
    
    connect(self, SIGNAL("currentPageChanged(int)"), SLOT("test(int)"))
  end
  
  def test i
    p "test - #{i}"
  end
  
  def currentIndexPagesSizeSelecter
    @pages_size_selecter.currentIndex
  end
  
  def setIndexPagesSizeSelecter i
    @pages_size_selecter.setCurrentIndex i
  end
  
  def pages_stat
    @pages_navig_left.enabled = @pages_selecter.currentIndex < 1 ? false : true
    @pages_navig_right.enabled = @pages_selecter.currentIndex + 1 == countPages ? false : true
    emit currentPageChanged currentOffset  if @pages_selecter.currentIndex > -1
  end
  
  def pages_prev 
    @pages_selecter.setCurrentIndex @pages_selecter.currentIndex - 1
  end
  
  def pages_next
    @pages_selecter.setCurrentIndex @pages_selecter.currentIndex + 1
  end
  
  def _update_index str
    update 0
  end
  
  def pagesEnabled state
    @pages_navig_left.enabled = state
    @pages_selecter.enabled = state
    @pages_navig_right.enabled = state
  end
  
  
  def currentSize
    @pages_size_selecter.currentText.to_i
  end
  
  def update num, size = currentSize
    if num <= size
      @pages_selecter.clear
      pagesEnabled false
    else
      setPagesSelecter -(-num / size)
    end
  end
  
  def currentPage
    @pages_selecter.currentText.to_i - 1
  end
  
  def currentOffset
    currentPage * currentSize 
  end
  
  def countPages
    @pages_selecter.count
  end
  
  def setPagesSelecter count
    @pages_selecter.clear
    @pages_selecter.blockSignals true
    @pages_selecter.insertItems(0, Array.new(count){ |i| i.next.to_s })
    @pages_selecter.blockSignals false
    pagesEnabled true
  end
end