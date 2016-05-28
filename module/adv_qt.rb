class Qt::CheckBox
	#def checked?
	#	self.checked
	#end
end

class Qt::ComboBox
  def currentVariant
    self.itemData(self.currentIndex).toInt.to_s
  end
  
  def empty?
    self.count.zero?
  end
  
  def any?
    !self.empty?
  end
end

class Qt::LineEdit
  def textf
    self.text.force_encoding("UTF-8")
  end
end

class Qt::DateEdit
  def to_dates
    "#{self.date.year}-#{self.date.month}-#{self.date.day}"
  end
end

class Qt::StandardItemModel
  #def each
  #  self.to_a.each do |v|
  #    yield v
  #  end  
  #end
  # на самом деле есть у объекта есть метод to_a, то руби сам добавляет итераторы ... надо ещё посмотреть что будет с .map
  def to_a #метод очень стремный, но пока мне лень думать.
    r = []
    for i in (0...self.rowCount)
      x = []
      for j in (0...self.columnCount)
        #x << self.item(i, j).text
        x << self.index(i, j).data(Qt::DisplayRole).toString
      end
      r << x
    end
    r
  end
  
  
  def headers
    r = []
    for i in (0...self.columnCount)
      r << self.headerData(i, Qt::Horizontal).toString
    end
    r
  end

end