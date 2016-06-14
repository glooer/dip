class PoTableComboBox < Qt::ComboBox
  def initialize *args
    super
    setView Qt::TableView.new self
    view.setMinimumSize 1000, 300
    view.sortingEnabled = true
  end
  
  def addItem arr, variant = Qt::Variant.new("0"), header = Qt::Variant.new("")
    row = model.rowCount
    arr.each.with_index do |v, i|
      newItem = Qt::StandardItem.new(v.to_s)
      newItem.setData(variant)
      model.setItem(row, i, newItem)
    end
    model.setHeaderData(row, Qt::Vertical, header)
    view.selectionModel.setCurrentIndex(model.index(0, 0), Qt::ItemSelectionModel::SelectCurrent) if model.rowCount == 1
  end
  
  def setHeader arr
    arr.each.with_index{ |name, i| model.setHeaderData(i, Qt::Horizontal, Qt::Variant.new(name)) }
  end
  
  def currentItem
    return nil if view.selectedIndexes.first.nil?
    model.itemFromIndex(view.selectedIndexes.first)
  end
  
  def currentVariant item = currentItem
    return nil if item.nil? || item.data.nil?
    item.data.toString.force_encoding("utf-8")
  end
end