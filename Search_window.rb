class Ui_Search_window
  def itemByName name
    send(name.to_sym)
  end
end


class Search_window < Qt::MainWindow
  attr_accessor :limit

  slots "id_checkBox_change(int)", "ok_search_button_clicked()", "search_with_offset(int)", "birthDate_checkBox_change(int)", "document_checkBox_ui_fill()", "oncick_export_to_csv()", "address_select_area_ui_fill()", "address_select_city_ui_fill(int)", "address_select_street(int)", "event_type_ui_fill()", "orgStructure_checkBox_ui_fill()", "age_checkBox_change(int)", "action_setPerson_id_orgStructure_fill()", "db_limit_change(QString)", "event_orgStructure_selecter_fill(int)", "actionType_tree_select_fill(int)", "actionType_class_fill(int)", "event_exec_speciality_fill(int)", "action_execPerson_speciality_fill(int)", "action_setPerson_speciality_fill(int)", "action_person_id_orgStructure_fill()", "action_finance_id_selecter_fill(int)", "action_setPerson_id_selecter_fill(int)", "event_person_id_selecter_fill(int)", "action_person_id_selecter_fill(int)", "action_assistant_id_selecter_fill(int)", "event_lpu_selecter_fill(int)", "event_relegateOrg_id_selecter_fill(int)", "event_result_id_selecter_fill(int)", "test_slot()", "paginator_off_event(bool)"

  def initialize
    super
    @ui = Ui_Search_window.new
    @ui.setupUi(self)
    
    
    
    @count_all_record = Qt::Label.new
    @ui.statusbar.addPermanentWidget(@count_all_record)
    
    #@limit = @ui.db_limit_selecter.currentText
    
    #...
    #@ui_user = {}
    #@ui_user["action_type_tree_fields"] = QaTreeWidgetActionType.new
    #@ui.action_type_tree.addWidget(@ui_user["action_type_tree_fields"])
    #...
    
    connect(@ui.ok_search_button, SIGNAL("clicked()"), SLOT("ok_search_button_clicked()"))
    #connect(@ui.db_limit_selecter, SIGNAL("currentIndexChanged(QString)"), SLOT("db_limit_change(QString)"))
    
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
    
    
    #pages
    connect(@ui.paginator, SIGNAL("currentPageChanged(int)"), SLOT("search_with_offset(int)"))
    connect(@ui.paginator_off, SIGNAL("triggered(bool)"), SLOT("paginator_off_event(bool)"))
    
    
    
    connect(@ui.actionTest, SIGNAL("triggered(bool)"), SLOT("test_slot()"))
    #paginator_off_event
    #...
    
    setup_ui_settings
    @ui.id_checkBox.checked = true
    ok_search_button_clicked
    
    
    
    #connect(@ui)
    
    #@action_type_tree_fields.setData(S11::ActionType.select("id, group_id, code, name").where("class = 2").all.as_json)
    #....
    
    
  end
  
  def closeEvent a
    save_ui_settings
  end
  
  def save_ui_settings
    AppSettings.save_ui self, @ui
  '''
    set = Qt::Settings.new("ui.ini", Qt::Settings::IniFormat)
    set.beginGroup("Ui")
    
    set.setValue("Search_window_isMaximized", Qt::Variant.new(self.maximized?))
    set.setValue("Search_window_geometry_x", Qt::Variant.new(self.geometry.x))
    set.setValue("Search_window_geometry_y", Qt::Variant.new(self.geometry.y))
    set.setValue("Search_window_geometry_width", Qt::Variant.new(self.geometry.width))
    set.setValue("Search_window_geometry_height", Qt::Variant.new(self.geometry.height))
    
    
    @widgets_for_save_settings_size.each do |name|
      set.setValue(name + "_size_x", Qt::Variant.new(@ui.itemByName(name).size.width))
      set.setValue(name + "_size_y", Qt::Variant.new(@ui.itemByName(name).size.height))
    end
    
    @widgets_for_save_settings_checked.each do |name|
      set.setValue(name + "_checked", Qt::Variant.new(@ui.itemByName(name).checked))
    end
    
    @ui.menubar.findChildren(Qt::Menu).map(&:actions).flatten.select{ |v| v.objectName and v.checkable }.each do |name|
      set.setValue(name.objectName + "_checked", Qt::Variant.new(name.checked?))
    end
    
    name = "paginator"
    set.setValue(name + "_index", Qt::Variant.new(@ui.itemByName(name).currentIndexPagesSizeSelecter))
    
    set.endGroup
    
    '''
  end
  
  def test_slot
    #UiSettings.test @ui
  end
  
  def setup_ui_settings
    AppSettings.setup_ui self, @ui
    #self.showMaximized
    '''
    @ui.splitter.setStretchFactor(0,1)
    set = Qt::Settings.new("ui.ini", Qt::Settings::IniFormat)
    set.beginGroup("Ui")
    
    p ["------", set.value("fdasfdsa").toString]
    #set.value("Search_window_isMaximized", Qt::Variant.new(self.maximized?))
    #set.value("Search_window_geometry_x", Qt::Variant.new(self.geometry.x))
    #set.value("Search_window_geometry_y", Qt::Variant.new(self.geometry.y))
    #set.value("Search_window_geometry_width", Qt::Variant.new(self.geometry.width))
    #set.value("Search_window_geometry_height", Qt::Variant.new(self.geometry.height))
    if set.value("Search_window_isMaximized").toString != ""
      self.setGeometry set.value("Search_window_geometry_x").to_i, set.value("Search_window_geometry_y").to_i, set.value("Search_window_geometry_width").to_i, set.value("Search_window_geometry_height").to_i
      self.showMaximized if set.value("Search_window_isMaximized").toBool
    end
    
    @widgets_for_save_settings_size.each do |name|
      if set.value("#{name}_size_y").toString != "" and set.value("#{name}_size_x").toString != ""
        @ui.itemByName(name).resize set.value("#{name}_size_x").to_i, set.value("#{name}_size_y").to_i
      end
    end
    
    @widgets_for_save_settings_checked.each do |name|
      if set.value("#{name}_checked").toString != ""
        @ui.itemByName(name).checked = set.value("#{name}_checked").toString == "true" ? true : false
      end
    end
    
    @ui.menubar.findChildren(Qt::Menu).map(&:actions).flatten.select{ |v| v.objectName and v.checkable }.each do |name|
      if not set.value("#{name.objectName}_checked").toString.nil?
        name.checked = set.value("#{name.objectName}_checked").toString == "true" ? true : false
      end
    end
    

    name = "paginator"
    if set.value("#{name}_index").toString != ""
      @ui.itemByName(name).setIndexPagesSizeSelecter set.value("#{name}_index").to_i
    end
    #set.setValue(name + "_index", Qt::Variant.new(@ui.itemByName(name).currentIndexPagesSizeSelecter))
    
    set.endGroup
    '''
  end
  
  #def db_limit_change(count)
    #@limit = count.to_i
  #end

  
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
      db = db.joins_event_orgStructure(@ui.event_orgStructure_selecter.currentVariantWithChildren)
    end
    
    if @ui.event_person_speciality_id_checkBox.checked?
      db = db.exists_event_person_speciality @ui.event_person_speciality_id_selecter.currentVariant
    end
    
    if @ui.event_person_id_checkBox.checked?
      db = db.joins(:event).where event: { execPerson_id: @ui.event_person_id_selecter.currentVariant }
    end
    
    if @ui.event_isPrimary_checkBox.checked?
      db = db.joins(:event).where event: {isPrimary: @ui.event_isPrimary_selecter.currentIndex + 1 } 
    end
    
    if @ui.event_order_checkBox.checked?
      db = db.joins(:event).where event: {order: @ui.event_order_selecter.currentIndex + 1 } 
    end
    
    #дн
    #лпу
    #лпу любое кроме
    #направитель
    
    
    if @ui.event_mes_id_checkBox.checked?
      db = db.exists_event_mes @ui.event_mes_id_edit.textf
    end
    
    if @ui.event_result_id_checkBox.checked?
      db = db.joins(:event).where event: {result_id: @ui.event_result_id_selecter.currentVariant }
    end
    
    #
    
    
    #
    
    
    
    
    #действия(action)
    
    if @ui.actionType_checkBox.checked?
      if @ui.actionType_tree_select.currentText.force_encoding("UTF-8") == "Не выбрано"
        db = db.joins(:actionType).where actionType: {"class": @ui.actionType_class.currentIndex}
      else
        db = db.joins(:actionType).where("`ActionType`.`code` LIKE '#{@ui.actionType_tree_select.currentText.scan(/(^.*)\s\|/).flatten.first.force_encoding("UTF-8")}%'")
      end
      
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
    
    csv = Export.to_csv(filename)#, @ui.tableView.model.to_a, header: @ui.tableView.model.headers)
    db = S11::Client.select(:id)
    db_with_select = parse_ui_select(db)
    db_with_select_and_where = parse_ui_where(db_with_select)
    
    db = db_with_select_and_where
    #db = db_with_select_and_where.order(:id)
    #db = db.group("`Client`.`id`") if @ui.menu_Client_group_by.checked?
    a = db.find_each do |value|
      csv << value.as_json.values
    end
    csv.close
    #Export.to_csv(filename, @ui.tableView.model.to_a, header: @ui.tableView.model.headers)
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
    showResult goSearch
  end
  
  def search_with_offset i
    showResult goSearch i 
  end
  
  def showResult table
    return Qt::MessageBox.new{ self.text = "Пусто" }.exec() if table.empty?
    show_main_table table
  end
  
  def goSearch offset = 0, limit = @ui.paginator.currentSize
    db = S11::Client
    db_with_select = parse_ui_select(db)
    db_with_select_and_where = parse_ui_where(db_with_select)
    
    db = db_with_select_and_where
    db = db_with_select_and_where.order(:id)
    db = db.group("`Client`.`id`") if @ui.menu_Client_group_by.checked?
    
    db = db.select("SQL_CALC_FOUND_ROWS") if offset == 0 and !@ui.paginator_off.checked?
    a = db.offset(offset).take(limit).as_json
    
    #@ui.paginator.update db.found_rows  if offset == 0 and !@ui.paginator_off.checked?
    b = db.found_rows
    if offset == 0 and !@ui.paginator_off.checked?
      @ui.paginator.update b 
      @count_all_record.text = "Всего записей: #{b}"
    end
    #@count_all_record.text = "hi!"
    
    
    return a    
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
      @ui.tableView.setRowHeight(i, 19)
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
  
  def paginator_off_event i
    if i
      mb = Qt::MessageBox.new self do
        self.text = "Отключение разбивки на страницы может ускорить выполнение запроса, но если результатов запроса будет больше чем ограничение на колличество строк, то будет отображено только указанное колличество строк."
        self.icon = Qt::MessageBox::Information
        self.setWindowTitle("Внимание!")
      end
      mb.exec
      mb.dispose
    end
  end
  
  
  

end