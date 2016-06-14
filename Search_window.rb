class Search_window < Qt::MainWindow
  attr_accessor :limit

  slots "id_checkBox_change(int)", "ok_search_button_clicked()", "birthDate_checkBox_change(int)", "document_checkBox_ui_fill()", "oncick_export_to_csv()", "address_select_area_ui_fill()", "address_select_city_ui_fill(int)", "address_select_street(int)", "event_type_ui_fill()", "orgStructure_checkBox_ui_fill()", "age_checkBox_change(int)", "action_setPerson_id_orgStructure_fill()", "db_limit_change(QString)", "event_orgStructure_selecter_fill(int)", "actionType_tree_select_fill(int)", "actionType_class_fill(int)", "event_exec_speciality_fill(int)", "action_execPerson_speciality_fill(int)", "action_setPerson_speciality_fill(int)", "action_person_id_orgStructure_fill()", "action_finance_id_selecter_fill(int)", "action_setPerson_id_selecter_fill(int)", "event_person_id_selecter_fill(int)", "action_person_id_selecter_fill(int)", "action_assistant_id_selecter_fill(int)", "event_lpu_selecter_fill(int)", "event_relegateOrg_id_selecter_fill(int)", "event_result_id_selecter_fill(int)"

  def initialize
    super
    @ui = Ui_Search_window.new
    @ui.setupUi(self)
    
    @limit = @ui.db_limit_selecter.currentText
    
    #...
    #@ui_user = {}
    #@ui_user["action_type_tree_fields"] = QaTreeWidgetActionType.new
    #@ui.action_type_tree.addWidget(@ui_user["action_type_tree_fields"])
    #...
    
    connect(@ui.ok_search_button, SIGNAL("clicked()"), SLOT("ok_search_button_clicked()"))
    connect(@ui.db_limit_selecter, SIGNAL("currentIndexChanged(QString)"), SLOT("db_limit_change(QString)"))
    
    connect(@ui.id_checkBox, SIGNAL("stateChanged(int)"), SLOT("id_checkBox_change(int)"))
    connect(@ui.birthDate_checkBox, SIGNAL("stateChanged(int)"), SLOT("birthDate_checkBox_change(int)"))
    connect(@ui.age_checkBox, SIGNAL("stateChanged(int)"), SLOT("age_checkBox_change(int)"))
    connect(@ui.document_checkBox, SIGNAL("stateChanged(int)"), SLOT("document_checkBox_ui_fill()"))
    connect(@ui.address_checkBox, SIGNAL("stateChanged(int)"), SLOT("address_select_area_ui_fill()"))
    
    #connect(@ui.orgStructure_checkBox, SIGNAL("stateChanged(int)"), SLOT("orgStructure_checkBox_ui_fill()"))
    
    #вкладка фильтров обращение
    connect(@ui.event_type_checkBox, SIGNAL("stateChanged(int)"), SLOT("event_type_ui_fill()"))
    
    connect(@ui.address_select_area, SIGNAL("currentIndexChanged(int)"), SLOT("address_select_city_ui_fill(int)"))
    connect(@ui.address_select_city, SIGNAL("currentIndexChanged(int)"), SLOT("address_select_street(int)"))
    connect(@ui.event_orgStructure_checkBox, SIGNAL("stateChanged(int)"), SLOT("event_orgStructure_selecter_fill(int)"))
    connect(@ui.event_person_speciality_id_checkBox, SIGNAL("stateChanged(int)"), SLOT("event_exec_speciality_fill(int)"))
    connect(@ui.event_person_id_checkBox, SIGNAL("stateChanged(int)"), SLOT("event_person_id_selecter_fill(int)"))
    connect(@ui.event_lpu_checkBox, SIGNAL("stateChanged(int)"), SLOT("event_lpu_selecter_fill(int)"))
    connect(@ui.event_relegateOrg_id_checkBox, SIGNAL("stateChanged(int)"), SLOT("event_relegateOrg_id_selecter_fill(int)"))
    connect(@ui.event_result_id_checkBox, SIGNAL("stateChanged(int)"), SLOT("event_result_id_selecter_fill(int)"))
    
    connect(@ui.export_csv, SIGNAL("triggered()"), SLOT("oncick_export_to_csv()"))
    
    #вкладка действия
    #connect(@ui.actionType_class, SIGNAL("currentIndexChanged(int)"), @ui_user["action_type_tree_fields"], SLOT("action_type_class_changed(int)"))
    connect(@ui.actionType_checkBox, SIGNAL("stateChanged(int)"), SLOT("actionType_class_fill(int)"))
    connect(@ui.actionType_class, SIGNAL("currentIndexChanged(int)"), SLOT("actionType_tree_select_fill(int)"))
    connect(@ui.action_setPerson_id_orgStructure_checkBox, SIGNAL("stateChanged(int)"), SLOT("action_setPerson_id_orgStructure_fill()"))
    connect(@ui.action_person_id_orgStructure_checkBox, SIGNAL("stateChanged(int)"), SLOT("action_person_id_orgStructure_fill()"))
    connect(@ui.action_person_id_speciality_checkBox, SIGNAL("stateChanged(int)"), SLOT("action_execPerson_speciality_fill(int)"))
    connect(@ui.action_setPerson_id_speciality_checkBox, SIGNAL("stateChanged(int)"), SLOT("action_setPerson_speciality_fill(int)"))
    connect(@ui.action_finance_id_checkBox, SIGNAL("stateChanged(int)"), SLOT("action_finance_id_selecter_fill(int)"))
    connect(@ui.action_setPerson_id_checkBox, SIGNAL("stateChanged(int)"), SLOT("action_setPerson_id_selecter_fill(int)"))
    connect(@ui.action_person_id_checkBox, SIGNAL("stateChanged(int)"), SLOT("action_person_id_selecter_fill(int)"))
    connect(@ui.action_assistant_id_checkBox, SIGNAL("stateChanged(int)"), SLOT("action_assistant_id_selecter_fill(int)"))
    
    #...
    @ui.id_checkBox.checked = true
    ok_search_button_clicked
    
    #@action_type_tree_fields.setData(S11::ActionType.select("id, group_id, code, name").where("class = 2").all.as_json)
    #....
  end
  
  def db_limit_change(count)
    @limit = count.to_i
  end

  
  def parse_ui_where(db)
    if @ui.id_checkBox.checked?
      #эта проверка не нужна, ибо в базе есть жесть в виде идшников "83141к", а вдруг они норм...
      #if (id = @ui.id_edit.text.to_i) > 0
      id = @ui.id_edit.textf
      if (ids = @ui.id_selecter.currentVariant) == "0"
        db = db.where id: id
      else
        db = db.joins( :clientIdentification ).where clientIdentification: {identifier: id, accountingSystem_id: ids}
      end
      
      #else #когда в id_edit не число или число меньше 1
        #ошибка?
      #end
    end

    
    db = db.where lastName: @ui.lastName_edit.textf if @ui.lastName_checkBox.checked?
    db = db.where firstName: @ui.firstName_edit.textf if @ui.firstName_checkBox.checked?
    db = db.where patrName: @ui.patrName_edit.textf if @ui.patrName_checkBox.checked?
    
    if @ui.birthDate_checkBox.checked?
      date_start = @ui.birthDate_edit_start.to_dates
      if @ui.birthDate_checkBox_end.checked?
        date_end = @ui.birthDate_edit_end.to_dates 
        db = db.where birthDate: date_start..date_end
      else
        db = db.where birthDate: date_start
      end    
    end
    
    if @ui.age_checkBox.checked?
      age_date_end = Time.now.to_date.prev_year(@ui.age_edit_start.value)
      if @ui.age_checkBox_end.checked?
        age_date_start = Time.now.to_date.prev_year(@ui.age_edit_end.value + 1).next_day(1)
      else
        age_date_start = Time.now.to_date.prev_year(@ui.age_edit_start.value + 1).next_day(1)
      end
      
      db = db.where birthDate: (age_date_start..age_date_end)
    end
    
    db = db.where sex: (@ui.sex_female.checked? ? 2 : 1) if @ui.sex_checkBox.checked? #ибо нефиг галку ставить если не используешь...
    db = db.joins{ clientContact.outer }.where clientContact: {contact: @ui.contact_edit.textf} if @ui.contact_checkBox.checked?
    db = db.where SNILS: @ui.snils_edit.textf if @ui.snils_checkBox.checked?
    
    
    if @ui.document_checkBox.checked?
      number = @ui.document_number.textf
      serial = @ui.document_serial.textf
      
      db = db.joins(:clientDocument).where clientDocument: {number: number, serial: serial}
      
      if (ids = @ui.document_selecter.currentVariant) == "0"
        db = db.where clientDocument: {documentType_id: ids}
      end
    end
    
    #адрес
    db = db.joins{ clientAddress.outer }.where clientAddress: {type: (@ui.address_type_reg.checked? ? 1 : 0)} if @ui.address_checkBox.checked?
    
    
    
    #event
    db = db.joins(:event).where(event: { eventType_id: @ui.event_type_selecter.currentVariant }) if @ui.event_type_checkBox.checked?
    
    if @ui.event_setDate_checkBox.checked?
      event_start = @ui.event_setDate_start.to_dates
      event_end = @ui.event_setDate_end.to_dates
      
      db = db.joins(:event).where(event: { setDate: event_start..event_end })
    end
    
    db = db.joins(:event).where(event: { execDate: nil }) if @ui.event_execDate_less.checked?
    
    if @ui.event_execDate_checkBox.checked?
      event_start = @ui.event_execDate_start.to_dates
      event_end = @ui.event_execDate_end.to_dates
      
      db = db.joins(:event).where(event: { execDate: event_start..event_end })
    end
    
    
    if @ui.event_nextEventDate_checkBox.checked?
      event_start = @ui.event_nextEventDate_start.to_dates
      event_end = @ui.event_nextEventDate_end.to_dates
      
      db = db.joins(:event).where(event: { nextEventDate: event_start..event_end })
    end
    
    if @ui.event_orgStructure_checkBox.checked?
      db = db.joins(:eventPerson)#.where(eventPerson: {orgStructure_id: @ui.event_orgStructure_selecter.currentVariantWithChildren})#@ui.event_orgStructure_selecter.currentVariantWithChildren
    end
    
    #if @ui.orgStructure_checkBox.checked?
    
    #end
    
    
    
    #действия(action)
    #db = db.joins(:actionType)
    if @ui.actionType_checkBox.checked?
      #db = db.where("`ActionType`.`code` LIKE '#{@ui_user["action_type_tree_fields"].currentText.scan(/(^.*)\s\|/).flatten.first.force_encoding("UTF-8")}%'")
    else #одно из действий будет выбрано по умолчанию, иначе всё будет работать очень очень медленно и выводить чаще всего не нужные данные
      #db = db.where("`ActionType`.`code` LIKE 'А16%'")
    end
    
    if @ui.action_directionDate_checkBox.checked?
      db = db.joins(:action).where action: {directionDate: (@ui.action_directionDate_start.to_dates..@ui.action_directionDate_end.to_dates)}
    end
    
    
    db
  end
  
  def oncick_export_to_csv
    time = Time.new.strftime("%Y-%m-%d_%H-%M-%S") #винда не разренает ":" в названии файлов :(
    filename = Qt::FileDialog::getSaveFileName(self, "", "Clients_#{time}.csv", "CSV for MS Excel (*.csv)\n All files (*.*)") || return
    filename += ".csv" if File.extname(filename).empty?
    
    Export.to_csv(filename, @ui.tableView.model.to_a, header: @ui.tableView.model.headers)
  end
  
  def parse_ui_select(db)
    #из верхнего меню.
    #"Client.id, Client.firstName, Client.lastName, Client.sex"
    #клиент
    db = db.select(:id) if @ui.menu_Client_id.checked?
    db = db.select("Client.lastName as 'Фамилия'") if @ui.menu_Client_lastName.checked?
    db = db.select("Client.firstName as 'Имя'") if @ui.menu_Client_firstName.checked?
    db = db.select("Client.patrName as 'Отчество'") if @ui.menu_Client_patrName.checked?
    db = db.select("Client.birthDate as 'Дата рождения'") if @ui.menu_Client_birthDate.checked?
    db = db.with_age if @ui.menu_Client_age.checked?
    db = db.with_sex if @ui.menu_Client_sex.checked?  #вернет пол (просто такая особенность activeRecord, когда нельзя просто взять и добавить if в select, по этому приходится заранее подготовленую фунцию использовать, а ещё activeRecord контролирует типы, и по этому сходит с ума когда видит что sex равен не числу а строке)
    db = db.select("Client.SNILS as 'СНИЛС'") if @ui.menu_Client_SNILS.checked?
    db = db.select("rbBloodType.name as 'Группа крови'").joins{ rbBloodType.outer } if @ui.menu_Client_bloodType.checked?
    #клиент - социальный статус
    #не очень хорошо конечно забивать так числа, но это проблема будущего меня
    db = db.with_socStatus(7, "Место проживания") if @ui.menu_Client_socStatus_rezidence.checked?
    db = db.with_socStatus(8, "Гражданство") if @ui.menu_Client_socStatus_citizenship.checked?
    db = db.with_socStatus(6, "Инвалидность") if @ui.menu_Client_socStatus_disability.checked?
    db = db.with_socStatus(1, "Льгота") if @ui.menu_Client_socStatus_benefit.checked?
    db = db.with_socStatus(35, "Дееспособность") if @ui.menu_Client_socStatus_capacity.checked?

    #идентификаторы клиента
    db = db.with_clientIdentification 1, "Единый полис" if @ui.menu_Client_indentification_1.checked?
    db = db.with_clientIdentification 2, "Идентификатор ЕИС РПФ" if @ui.menu_Client_indentification_2.checked?
    db = db.with_clientIdentification 3, "Идентификатор ЕИС МУ" if @ui.menu_Client_indentification_3.checked?
    db = db.with_clientIdentification 4, "Идентификатор системы хранения изображений" if @ui.menu_Client_indentification_4.checked?
    db = db.with_clientIdentification 5, "Архивный номер" if @ui.menu_Client_indentification_5.checked?
    db = db.with_clientIdentification 6, "Идентификатор ТФОМС Курганской области" if @ui.menu_Client_indentification_6.checked?
    db = db.with_clientIdentification 7, "Идентификатор ВТМП" if @ui.menu_Client_indentification_7.checked?
    db = db.with_clientIdentification 8, "Идентификатор лабораторной системы" if @ui.menu_Client_indentification_8.checked?
    db = db.with_clientIdentification 10, "Адрес регистрации пациента" if @ui.menu_Client_indentification_10.checked?
    db = db.with_clientIdentification 11, "Адрес проживания пациента" if @ui.menu_Client_indentification_11.checked?
    db = db.with_clientIdentification 12, "Фото-номер" if @ui.menu_Client_indentification_12.checked?
    #идентификаторы клиента end
    
    db = db.joins(:event).with_department if @ui.menu_Event_sub.checked?
    #адрес
    # !!!записи начнут дублироваться, ибо есть адрес прописки и есть проживания
    #db = db.with_addressType.joins( :clientAddress ) if @ui.menu_Address_type.checked? 
    db = db.with_addressType.joins{ clientAddress.outer } if @ui.menu_Address_type.checked? 
    db = db.select("Address.flat as 'Номер квартиры'").joins{ address.outer } if @ui.menu_Address_numApartment.checked?
    db = db.select("AddressHouse.number as 'Номер дома'").joins{ addressHouse.outer } if @ui.menu_Address_numHome.checked?
    db = db.select("kladr.STREET.name as 'Улица'").joins{ street.outer } if @ui.menu_Address_street.checked?
    db = db.select("kladr.KLADR.name as 'Город'").joins{ kladr.outer } if @ui.menu_Address_city.checked?
    db = db.with_ares if @ui.menu_Address_area.checked?
    
    #
    #события
    db = db.select("EventType.name as 'Тип события'").joins(:eventType) if @ui.menu_Event_type.checked?
    db = db.select("Event.setDate as 'Дата начала события'").joins(:event) if @ui.menu_Event_setDate.checked?
    db = db.select("Event.execDate as 'Дата окончания события'").joins(:event) if @ui.menu_Event_execDate.checked?
    db = db.select("rbResult.name as 'Результат события'").joins{ rbResult.outer } if @ui.menu_Event_result.checked?
    db = db.select("Event.prevEventDate as 'Дата следующий явки'").joins(:event) if @ui.menu_Event_nextEventDate.checked?
    db = db.with_eventRange.joins(:event) if @ui.menu_Event_rangeDate.checked?
    db = db.select("Contract.number as 'Код оплаты'").joins{ contract.outer } if @ui.menu_Event_contract_name.checked? #код оплаты? точно?
    db = db.select("Contract.resolution as 'Постановление договора'").joins{ contract.outer } if @ui.menu_Event_contract_resolution.checked?
    db = db.select("rbFinance.name as 'Источник финансирования'").joins{ rbFinance.outer } if @ui.menu_Event_contract_finance_name.checked?
    db = db.select("mes.MES.code as 'МЭС (код)'").joins{ mes.outer } if @ui.menu_Event_MES_code.checked?
    db = db.select("mes.MES.name as 'МЭС (название)'").joins{ mes.outer } if @ui.menu_Event_MES_name.checked?
    db = db.joins(:event).with_department if @ui.menu_Event_sub.checked?
    
    db
    #
  end
  
  def ok_search_button_clicked
    db = S11::Client
    db_with_select = parse_ui_select(db)
    db_with_select_and_where = parse_ui_where(db_with_select)
    
    
    a = db_with_select_and_where.order(:id).take(limit).as_json
    if a.empty?
      Qt::MessageBox.new{
        self.text = "Пусто"
      }.exec()
      return
    end
    show_main_table(a)
    
  end
  
  
  def show_main_table(table = {})
    @ui.tableView.model.dispose if @ui.tableView.model
    model = Qt::StandardItemModel.new(@ui.tableView)
    @ui.tableView.setModel(model)
    #model.setHeaderData(0, Qt::Horizontal, tr("Name"));
    
    
    table.each.with_index do |row, i|
      id = row.delete("id") || i.next.to_s
      row.values.each.with_index do |col, j|
        newItem = Qt::StandardItem.new(col.to_s)
        model.setItem(i, j, newItem)
      end
      model.setHeaderData(i, Qt::Vertical, Qt::Variant.new(id))
    end
    #newItem = Qt::StandardItem.new("e")
    #model.setItem(0, 0, newItem)
    
    '''
    results.each_with_index do |row, i|
      row.each_with_index do |col, j|
        newItem = Qt::StandardItem.new(col.last.to_s)
        model.setItem(i, j, newItem)
      end
    end
    '''
    table.first.keys.each.with_index{ |name, i| model.setHeaderData(i, Qt::Horizontal, Qt::Variant.new(name)) }
    @ui.tableView.resizeColumnsToContents
  end
  
  def address_select_street(x)
    return if x.zero?
    @ui.address_select_street.clear
    @ui.address_select_street.addItem("Не задано", Qt::Variant.new("0"))
    S11::Kladr.getStreetByCity(@ui.address_select_city.currentVariant).each{ |val| @ui.address_select_street.addItem(val["name"], Qt::Variant.new(val["CODE"])) }
  end
  
  def address_select_city_ui_fill(x)
    return if x.zero?
    @ui.address_select_city.clear
    @ui.address_select_city.addItem("Не задано", Qt::Variant.new("0"))
    S11::Kladr.getCityByArea(@ui.address_select_area.currentVariant).each{ |val| @ui.address_select_city.addItem(val["name"], Qt::Variant.new(val["GNINMB"])) }
  end
  
  def address_select_area_ui_fill
    return if @ui.address_select_area.any?
    @ui.address_select_area.addItem("Не задано", Qt::Variant.new("0"))
    S11::Kladr.getAreas.all.each{ |val| @ui.address_select_area.addItem(val["name"], Qt::Variant.new(val["prefix"])) }
  end
  
  def document_checkBox_ui_fill
    return if @ui.document_selecter.any?
    @ui.document_selecter.addItem("Не задано", Qt::Variant.new("0"))
    S11::RbDocumentType.find_each{ |val| @ui.document_selecter.addItem(val["name"], Qt::Variant.new(val["id"])) }
  end
  
  def id_selecter_ui_fill
    @ui.id_selecter.addItem("Не задано", Qt::Variant.new("0")) #если это то ищем по idшнику из таблицы Client
    S11::RbAccountingSystem.find_each{ |val| @ui.id_selecter.addItem(val["name"], Qt::Variant.new(val["id"])) }
  end
  
  def event_type_ui_fill
    return if @ui.event_type_selecter.any?
    S11::EventType.select("name, id").find_each{ |val| @ui.event_type_selecter.addItem(val["name"], Qt::Variant.new(val["id"])) }
  end
  
  def orgStructure_checkBox_ui_fill
    return if @ui.orgStructure_selecter.any?
    S11::OrgStructure.select([:code, :id]).where(hasHospitalBeds: 1).find_each{ |val| @ui.orgStructure_selecter.addItem(val["code"], Qt::Variant.new(val["id"])) }
  end  
  
  def action_setPerson_id_orgStructure_fill
    return if !@ui.action_setPerson_id_orgStructure_selecter.count.zero?
    @ui.action_setPerson_id_orgStructure_selecter.setData(S11::OrgStructure.select([:id, :parent_id, :code, :name]).all.as_json, "parent_id") do |key, value|
      x = Qt::StandardItem.new "#{value["code"]} | #{value["name"]}"
      x.setData(Qt::Variant.new(key))
      x
    end
  end
  
  def birthDate_checkBox_change(state)
    @ui.birthDate_edit_start.enabled = state
    @ui.birthDate_checkBox_end.enabled = state
    @ui.birthDate_edit_end.enabled = state if @ui.birthDate_checkBox_end.checked?
  end
  
  def age_checkBox_change(state)
    @ui.age_edit_start.enabled = state
    @ui.age_checkBox_end.enabled = state
    @ui.age_edit_end.enabled = state if @ui.age_checkBox_end.checked?
  end
  
  def id_checkBox_change(state)
    id_selecter_ui_fill if @ui.id_selecter.count.zero?
    @ui.id_selecter.enabled = state
    @ui.id_edit.enabled = state
  end
  
  def event_orgStructure_selecter_fill i
    return if !@ui.event_orgStructure_selecter.count.zero?
    @ui.event_orgStructure_selecter.setData(S11::OrgStructure.select([:id, :parent_id, :code]).all.as_json) do |key, value|
      x = Qt::StandardItem.new "#{value["code"]}"
      x.setData(Qt::Variant.new(key))
      x
    end
  end
  
  def action_person_id_orgStructure_fill
    return if !@ui.action_person_id_orgStructure_tree_select.count.zero?
    @ui.action_person_id_orgStructure_tree_select.setData(S11::OrgStructure.select([:id, :parent_id, :code]).all.as_json) do |key, value|
      x = Qt::StandardItem.new "#{value["code"]}"
      x.setData(Qt::Variant.new(key))
      x
    end
  end
  
  def actionType_class_fill i
    @ui.actionType_class.setCurrentIndex(2) if @ui.actionType_class.currentIndex == -1
    @ui.actionType_class.enabled = i
    @ui.actionType_tree_select.enabled = i
  end
  
  def actionType_tree_select_fill i
    if @ui.actionType_tree_select.model_cache[i]
      @ui.actionType_tree_select.setModel(@ui.actionType_tree_select.model_cache[i])
    else
      @ui.actionType_tree_select.model_cache[i] = Qt::StandardItemModel.new
      @ui.actionType_tree_select.setModel(@ui.actionType_tree_select.model_cache[i])
      x = Qt::StandardItem.new "Не выбрано"
      x.setData(Qt::Variant.new("привет!"))
      @ui.actionType_tree_select.model.appendRow x
      @ui.actionType_tree_select.setData(S11::ActionType.select([:id, :group_id, :code, :name]).where(class: i, showInForm: 1).all.as_json, "group_id") do |key, value|
        x = Qt::StandardItem.new "#{value["code"]} | #{value["name"]}"
        x.setData(Qt::Variant.new(key))
        x
      end
    end
  end
  
  def event_exec_speciality_fill i
    return if !@ui.event_person_speciality_id_selecter.count.zero?
    S11::RbSpeciality.select([:id, :name]).find_each{ |val| @ui.event_person_speciality_id_selecter.addItem(val[:name], Qt::Variant.new(val[:id])) }
  end
  
  def action_execPerson_speciality_fill i
    return if !@ui.action_person_id_speciality_selecter.count.zero?
    S11::RbSpeciality.select([:id, :name]).find_each{ |val| @ui.action_person_id_speciality_selecter.addItem(val[:name], Qt::Variant.new(val[:id])) }
  end
  
  def action_setPerson_speciality_fill i
    return if !@ui.action_setPerson_id_speciality_selecter.count.zero?
    S11::RbSpeciality.select([:id, :name]).find_each{ |val| @ui.action_setPerson_id_speciality_selecter.addItem(val[:name], Qt::Variant.new(val[:id])) }
  end
  
  def action_finance_id_selecter_fill i
    return if !@ui.action_finance_id_selecter.count.zero?
    S11::RbFinance.select([:id, :name]).find_each{ |val| @ui.action_finance_id_selecter.addItem(val[:name], Qt::Variant.new(val[:id])) }
  end
  
  def setPerson_selecter_fill selecter 
    S11::Person.joins{ [rbPost.outer, rbSpeciality.outer, orgStructure.outer] }.select([Person: [:id, :code, "CONCAT(`Person`.`lastName`, ' ', `Person`.`firstName`, ' ', `Person`.`patrName`) as `PersonFIO`"], rbPost: ["`rbPost`.`name` as `PostName`"], rbSpeciality: ["`rbSpeciality`.`name` as `SpecialityName`"], orgStructure: ["`OrgStructure`.`name` as `OrgStructureName`"]]).find_each do |val|
      selecter.addItem([val[:PersonFIO], val[:PostName], val[:SpecialityName], val[:OrgStructureName]], Qt::Variant.new(val[:id]), Qt::Variant.new(val[:code]))
    end
    selecter.setHeader(["ФИО", "Должность", "Специальность", "Подразделение"])
    selecter.view.resizeColumnsToContents
  end
  
  def action_setPerson_id_selecter_fill i
    return if !@ui.action_setPerson_id_selecter.count.zero?
    setPerson_selecter_fill @ui.action_setPerson_id_selecter
  end
  
  def event_person_id_selecter_fill i
    return if !@ui.event_person_id_selecter.count.zero?
    setPerson_selecter_fill @ui.event_person_id_selecter
  end
  
  def action_person_id_selecter_fill i
    return if !@ui.action_person_id_selecter.count.zero?
    setPerson_selecter_fill @ui.action_person_id_selecter
  end
  
  def action_assistant_id_selecter_fill i
    return if !@ui.action_assistant_id_selecter.count.zero?
    setPerson_selecter_fill @ui.action_assistant_id_selecter
  end
  
  def event_lpu_selecter_fill i
    return if !@ui.event_lpu_selecter.count.zero?
    S11::Organisation.select([:id, :infisCode, :shortName]).where("`Organisation`.`infisCode` != ''").order(:infisCode).find_each{ |val| @ui.event_lpu_selecter.addItem("#{val[:infisCode]}|#{val[:shortName]}", Qt::Variant.new(val[:id])) }
  end
  
  def event_relegateOrg_id_selecter_fill i
    return if !@ui.event_relegateOrg_id_selecter.count.zero?
    S11::Organisation.select([:id, :infisCode, :shortName]).where("`Organisation`.`infisCode` != ''").order(:infisCode).find_each{ |val| @ui.event_relegateOrg_id_selecter.addItem("#{val[:infisCode]}|#{val[:shortName]}", Qt::Variant.new(val[:id])) }
  end
  
  def event_result_id_selecter_fill i
    return if !@ui.event_result_id_selecter.count.zero?
    S11::RbResult.select([:id, :name]).find_each{ |val| @ui.event_result_id_selecter.addItem(val[:name], Qt::Variant.new(val[:id])) }
  end
  
  
  

end