class QaTreeWidgetLPU < QaTreeWidget
  
  def initialize *args
    super  
    setData(S11::OrgStructure.select([:id, :parent_id, :code, :name]).all.as_json)
   end
  
  def setData matrix
    view.model.appendRow Qt::StandardItem.new "Не выбрано"
    generateData(matrix.inject({}){ |h, col| h.update col.delete("id") => col }, nil, "parent_id", view.model) do |key, value| 
      x = Qt::StandardItem.new "#{value["code"]}"
      x.setData(Qt::Variant.new(key))
      x
    end
  end

end