class UTreeView < Qt::TreeView
  
  def initialize *args
    super
    #self.movable = false
    self.headerHidden = true
    connect(self, SIGNAL("expanded(QModelIndex)"), args.first, SLOT("sss(QModelIndex)"))
    connect(self, SIGNAL("collapsed(QModelIndex)"), args.first, SLOT("sss(QModelIndex)"))
  end
end

class QaTreeWidgetActionType < Qt::ComboBox
  slots "sss(QModelIndex)"

  def sss i
    @skipedHide = true
  end
  
  def initialize *args
    super  
    setView UTreeView.new self
    #view.viewport.installEventFilter self
    acceptDrops = false
    view.setMinimumSize 600, 300

    sizeAdjustPolicy = Qt::ComboBox::AdjustToMinimumContentsLengthWithIcon
    #setMaximumSize 290, 700
    @skipedHide = false
    
  end
  
  #def eventFilter object, event
  #  if event.type == Qt::Event::MouseButtonPress
  #    @skipedHide = true
  #  end
  #  nil
  #end
  
  def hidePopup
    if @skipedHide
      @skipedHide = false
    else
      super
    end
  end
  
  def setData matrix 
    generateData matrix.inject({}){ |h, col| h.update col.delete("id") => col }, nil, view.model
  end
  
  private
  def generateData cat, parent, model = view.model
    cat.each do |k, v|
      if v["group_id"] == parent
        x = Qt::StandardItem.new "#{v["code"]} | #{v["name"]}"
        model.appendRow x
        cat.delete k
        generateData cat, k, x
      end
    end
  end

end