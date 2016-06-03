class QaTreeWidgetActionType < Qt::ComboBox
  def initialize *args
    super
    setView Qt::TreeView.new self
    view.viewport.installEventFilter self 
    view.headerHidden = true
    view.setMinimumSize 200, 400;
    @skipHideTree = false
    
    '''
    item1 = Qt::StandardItem.new "One" 
    item2 = Qt::StandardItem.new "Two" 
    item3 = Qt::StandardItem.new "Three" 
    item4 = Qt::StandardItem.new "Four"
    view.model.appendRow item1 
    item1.appendRow item2 
    item2.appendRow item3 
    view.model.appendRow item4 
    '''
  end
  
  def loadData table
    
  end
  
  def eventFilter object, event
    if (object.class.name == "Qt::Widget" and event.type == Qt::Event::MouseButtonPress)
      @skipHideTree = true
    end
    nil
  end
  
  def hidePopup
    if @skipHideTree
      @skipHideTree = false
    else
      super
    end
  end
  
end