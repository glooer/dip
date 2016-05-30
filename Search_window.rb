class Search_window < Qt::MainWindow
  attr_reader :limit

  slots "id_checkBox_change(int)", "ok_search_button_clicked()", "birthDate_checkBox_change(int)", "document_checkBox_ui_fill()", "oncick_export_to_csv()", "address_select_area_ui_fill()", "address_select_city_ui_fill(int)", "address_select_street(int)", "event_type_ui_fill()", "orgStructure_checkBox_ui_fill()"

  def initialize
    super
    @ui = Ui_Search_window.new
    @ui.setupUi(self)
    
    @limit = 1_000
    
    
    connect(@ui.ok_search_button, SIGNAL("clicked()"), SLOT("ok_search_button_clicked()"))
    
    connect(@ui.id_checkBox, SIGNAL("stateChanged(int)"), SLOT("id_checkBox_change(int)"))
    connect(@ui.birthDate_checkBox, SIGNAL("stateChanged(int)"), SLOT("birthDate_checkBox_change(int)"))
    connect(@ui.document_checkBox, SIGNAL("stateChanged(int)"), SLOT("document_checkBox_ui_fill()"))
    connect(@ui.address_checkBox, SIGNAL("stateChanged(int)"), SLOT("address_select_area_ui_fill()"))
    
    connect(@ui.orgStructure_checkBox, SIGNAL("stateChanged(int)"), SLOT("orgStructure_checkBox_ui_fill()"))
    
    #вкладка фильтров обращение
    connect(@ui.event_type_checkBox, SIGNAL("stateChanged(int)"), SLOT("event_type_ui_fill()"))
    
    connect(@ui.address_select_area, SIGNAL("currentIndexChanged(int)"), SLOT("address_select_city_ui_fill(int)"))
    connect(@ui.address_select_city, SIGNAL("currentIndexChanged(int)"), SLOT("address_select_street(int)"))
    
    connect(@ui.export_csv, SIGNAL("triggered()"), SLOT("oncick_export_to_csv()"))
    
    
    #...
    @ui.id_checkBox.checked = true
    ok_search_button_clicked
    #....
  end

  
  def parse_ui_where(db)
    if @ui.id_checkBox.checked?
      #эта проверка не нужна, ибо в базе есть жесть в виде идшников "83141к", а вдруг они норм...
      #if (id = @ui.id_edit.text.to_i) > 0
      id = @ui.id_edit.text.force_encoding("UTF-8")
      if (ids = @ui.id_selecter.currentVariant) == "0"
        db = db.where("Client.id = ?", id)
      else
        db = db.joins( :clientIdentification ).where("ClientIdentification.identifier = ? and ClientIdentification.accountingSystem_id = ?", id, ids)
      end
      
      #else #когда в id_edit не число или число меньше 1
        #ошибка?
      #end
    end


    db = db.where("Client.lastName = ?", @ui.lastName_edit.textf) if @ui.lastName_checkBox.checked?
    db = db.where("Client.firstName = ?", @ui.firstName_edit.textf) if @ui.firstName_checkBox.checked?
    db = db.where("Client.patrName = ?", @ui.patrName_edit.textf) if @ui.patrName_checkBox.checked?
    
    if @ui.birthDate_checkBox.checked?
      date_start = @ui.birthDate_edit_start.to_dates
      if @ui.birthDate_checkBox_end.checked?
        date_end = @ui.birthDate_edit_end.to_dates 
        db = db.where "Client.birthDate >= ? and Client.birthDate <= ?", date_start, date_end
      else
        db = db.where "Client.birthDate = ?", date_start
      end    
    end
    
    db = db.where("Client.sex = ?", @ui.sex_female.checked? ? 2 : 1) if @ui.sex_checkBox.checked? #ибо нефиг галку ставить если не используешь...
    db = db.joins{ clientContact.outer }.where("ClientContact.contact = ?", @ui.contact_edit.textf) if @ui.contact_checkBox.checked?
    db = db.where("Client.SNILS = ?", @ui.snils_edit.textf) if @ui.snils_checkBox.checked?
    
    
    if @ui.document_checkBox.checked?
      number = @ui.document_number.textf
      serial = @ui.document_serial.textf
      
      db = db.joins(:clientDocument).where("ClientDocument.number = ? and ClientDocument.serial = ?", number, serial)
      
      if (ids = @ui.document_selecter.currentVariant) == "0"
        db = db.where("ClientDocument.documentType_id = ?", ids)
      end
    end
    
    #адрес
    db = db.joins{ clientAddress.outer }.where("ClientAddress.type = ?", @ui.address_type_reg.checked? ? 1 : 0) if @ui.address_checkBox.checked?
    
    
    
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
    
    if @ui.orgStructure_checkBox.checked?
    
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
    
    db
    #
  end
  
  def db_generator(select, where)
    []
  end
  
  def ok_search_button_clicked
    #show_main_table(db_generator(parse_ui_select, parse_ui_where)) 
    
    #show_main_table parse_ui_select(S11::Client).take(limit).as_json
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
    S11::OrgStructure.select("code, id").where(hasHospitalBeds: 1).find_each{ |val| @ui.orgStructure_selecter.addItem(val["code"], Qt::Variant.new(val["id"])) }
  end  
  
  def birthDate_checkBox_change(state)
    @ui.birthDate_edit_start.enabled = state
    @ui.birthDate_checkBox_end.enabled = state
    @ui.birthDate_edit_end.enabled = state if @ui.birthDate_checkBox_end.checked?
  end
  
  def id_checkBox_change(state)
    id_selecter_ui_fill if @ui.id_selecter.count.zero?
    @ui.id_selecter.enabled = state
    @ui.id_edit.enabled = state
  end
  
  
  

end