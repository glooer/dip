class QaTreeWidgetActionType < QaTreeWidget
  slots "action_type_class_changed(int)"

  def action_type_class_changed i
    if @model_cache[i]
      view.model = @model_cache[i]
    else
      setData(S11::ActionType.select([:id, :group_id, :code, :name]).where(class: i, showInForm: 1).all.as_json)
      @model_cache[i] = view.model 
    end
  end
  
  def initialize *args
    super  
   end
  
  def setData matrix
    generateData(matrix.inject({}){ |h, col| h.update col.delete("id") => col }, nil, "group_id", view.model) do |value| 
      "#{value["code"]} | #{value["name"]}"
    end
  end

end