class Search_window < Qt::MainWindow
  slots "id_checkBox_change(int)", "ok_search_button_clicked()", "birthDate_checkBox_change(int)", "document_checkBox_ui_fill()"


  def initialize
    super
    @ui = Ui_Search_window.new
    @ui.setupUi(self)
    ok_search_button_clicked
    connect(@ui.ok_search_button, SIGNAL("clicked()"), SLOT("ok_search_button_clicked()"))
    
    
    connect(@ui.id_checkBox, SIGNAL("stateChanged(int)"), SLOT("id_checkBox_change(int)"))
    connect(@ui.birthDate_checkBox, SIGNAL("stateChanged(int)"), SLOT("birthDate_checkBox_change(int)"))
    connect(@ui.document_checkBox, SIGNAL("stateChanged(int)"), SLOT("document_checkBox_ui_fill()"))
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
    
    
    if @ui.address_checkBox.checked?
      db = db.joins{ clientAddress.outer }.where("ClientAddress.type = ?", @ui.address_type_reg.checked? ? 1 : 0)
    end
    
    db
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
    
    
    db
    #
  end
  
  def db_generator(select, where)
    []
  end
  
  def ok_search_button_clicked
    #show_main_table(db_generator(parse_ui_select, parse_ui_where)) 
    limit = 1_000
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
      row.values.each.with_index do |col, j|
        newItem = Qt::StandardItem.new(col.to_s)
        model.setItem(i, j, newItem)
      end
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
  
  def document_checkBox_ui_fill
    return if !@ui.document_selecter.count.zero?
    @ui.document_selecter.addItem("Не задано", Qt::Variant.new("0"))
    S11::RbDocumentType.find_each{ |val| @ui.document_selecter.addItem(val["name"], Qt::Variant.new(val["id"])) }
  end
  
  def id_selecter_ui_fill
    @ui.id_selecter.addItem("Не задано", Qt::Variant.new("0")) #если это то ищем по idшнику из таблицы Client
    S11::RbAccountingSystem.find_each{ |val| @ui.id_selecter.addItem(val["name"], Qt::Variant.new(val["id"])) }
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