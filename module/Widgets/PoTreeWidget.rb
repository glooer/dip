class UTreeView < Qt::TreeView
  
  def initialize *args
    super
    #self.movable = false
    self.headerHidden = true
    connect(self, SIGNAL("expanded(QModelIndex)"), args.first, SLOT("sss(QModelIndex)"))
    connect(self, SIGNAL("collapsed(QModelIndex)"), args.first, SLOT("sss(QModelIndex)"))
  end
end

class PoTreeWidget < Qt::ComboBox
  attr_accessor :model_cache
  slots "sss(QModelIndex)"

  #def action_type_class_changed i
  #  if @model_cache[i]
  #    view.model = @model_cache[i]
  #  else
  #    setData(S11::ActionType.select([:id, :group_id, :code, :name]).where(class: i, showInForm: 1).all.as_json)
  #    @model_cache[i] = view.model 
  #  end
  #end
  
  def sss i
    @skipedHide = true
  end
  
  def initialize *args
    super  
    setView UTreeView.new self
    view.setMinimumSize 700, 300
    #view.viewport.installEventFilter self
    acceptDrops = false
    #view.setMinimumSize 600, 300

    #sizeAdjustPolicy = Qt::ComboBox::AdjustToMinimumContentsLengthWithIcon
    #setMaximumSize 290, 700
    @skipedHide = false
    @model_cache = {}
    
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
  
  def currentVariant item = currentItem
    return nil if item.nil? || item.data.nil?
    item.data.toString.force_encoding("utf-8")
  end
  
  def currentVariantWithChildren acc = [], parentIndex = view.selectedIndexes.first 
    acc << currentVariant(model.itemFromIndex(parentIndex))
    for i in 0...model.rowCount(parentIndex)
      index = model.index i, 0, parentIndex
      if model.hasChildren index
        currentVariantWithChildren acc, index
      else
        acc << currentVariant(model.itemFromIndex(index))
      end
    end
    acc
  end
  
  def currentItem
    return nil if view.selectedIndexes.first.nil?
    model.itemFromIndex(view.selectedIndexes.first)
  end
  
  def setData matrix, parent_id = "parent_id", id = "id", &block
    generateData(matrix.inject({}){ |h, col| h.update col.delete(id) => col }, nil, parent_id, view.model) do |key, value| 
      yield key, value
    end
    view.selectionModel.setCurrentIndex(model.index(0, 0), Qt::ItemSelectionModel::SelectCurrent) #иначе если обратиться к selectedIndexes до выбора чего нибудь то всё урадет
  end
  
  private
  
  
  def generateData cat, parent, parent_field_name, model = view.model, &block
    cat.each do |k, v|
      if v[parent_field_name] == parent
        x = yield(k, v)
        model.appendRow x
        cat.delete k
        generateData cat, k, parent_field_name, x, &block
      end
    end
  end

end