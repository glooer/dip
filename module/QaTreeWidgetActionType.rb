class QaTreeWidgetActionType < QaTreeWidget
  slots "action_type_class_changed(int)"

  def action_type_class_changed i
    p i
    if @model_cache[i]
      #setModel @model_cache[i]
      setView @model_cache[i]
      #view.model = @model_cache[i]
    else
      #view.clear
      
      x = UTreeView.new self
      setView x
      setData(S11::ActionType.select([:id, :group_id, :code, :name]).where(class: i, showInForm: 1).all.as_json)
      #view.model.reset
      #@model_cache[i] = x
      @model_cache[i] = x
      
    end
  end
  
  def initialize *args
    super  
   end
  
  def setData matrix
    view.model.appendRow Qt::StandardItem.new "Не выбрано"
    generateData(matrix.inject({}){ |h, col| h.update col.delete("id") => col }, nil, "group_id", view.model) do |key, value| 
      x = Qt::StandardItem.new "#{value["code"]} | #{value["name"]}"
      x.setData(Qt::Variant.new(key))
      x
    end
  end

end