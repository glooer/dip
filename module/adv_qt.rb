class Qt::CheckBox
	#def checked?
	#	self.checked
	#end
end

class Qt::ComboBox
  def currentVariant
    self.itemData(self.currentIndex).toInt.to_s
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