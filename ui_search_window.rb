=begin
** Form generated from reading ui file 'search_window.ui'
**
** Created: Чт 2. июн 06:37:54 2016
**      by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Search_window
    attr_reader :menu_Client_lastName
    attr_reader :menu_Client_firstName
    attr_reader :menu_Client_patrName
    attr_reader :menu_Client_id
    attr_reader :menu_Client_birthDate
    attr_reader :menu_Client_sex
    attr_reader :menu_Client_SNILS
    attr_reader :menu_Client_bloodType
    attr_reader :menu_Address_type
    attr_reader :menu_Address_numApartment
    attr_reader :menu_Address_numHome
    attr_reader :menu_Address_street
    attr_reader :menu_Address_city
    attr_reader :action_17
    attr_reader :menu_Client_age
    attr_reader :menu_Address_area
    attr_reader :export_csv
    attr_reader :menu_Event_type
    attr_reader :menu_Event_contract_name
    attr_reader :menu_Event_contract_resolution
    attr_reader :menu_Event_contract_finance_name
    attr_reader :menu_Event_setDate
    attr_reader :menu_Event_execDate
    attr_reader :menu_Event_result
    attr_reader :menu_Event_nextEventDate
    attr_reader :menu_Event_rangeDate
    attr_reader :menu_Client_socStatus_citizenship
    attr_reader :menu_Client_socStatus_rezidence
    attr_reader :menu_Client_socStatus_disability
    attr_reader :menu_Client_socStatus_benefit
    attr_reader :menu_Client_socStatus_capacity
    attr_reader :menu_Action_sub
    attr_reader :menu_Event_MES_code
    attr_reader :menu_Event_MES_name
    attr_reader :centralwidget
    attr_reader :gridLayout
    attr_reader :splitter
    attr_reader :tableView
    attr_reader :layoutWidget
    attr_reader :gridLayout_2
    attr_reader :horizontalLayout_5
    attr_reader :pushButton_2
    attr_reader :horizontalSpacer
    attr_reader :ok_search_button
    attr_reader :tabWidget_2
    attr_reader :tab
    attr_reader :gridLayout_4
    attr_reader :scrollArea
    attr_reader :scrollAreaWidgetContents
    attr_reader :verticalLayout
    attr_reader :id_layout
    attr_reader :id_checkBox
    attr_reader :id_selecter
    attr_reader :id_edit
    attr_reader :lastName_layout
    attr_reader :lastName_checkBox
    attr_reader :lastName_edit
    attr_reader :firstName_layout
    attr_reader :firstName_checkBox
    attr_reader :firstName_edit
    attr_reader :patrName_layout
    attr_reader :patrName_checkBox
    attr_reader :patrName_edit
    attr_reader :formLayout
    attr_reader :birthDate_checkBox
    attr_reader :birthDate_edit_start
    attr_reader :birthDate_edit_end
    attr_reader :birthDate_checkBox_end
    attr_reader :sex_layout
    attr_reader :sex_checkBox
    attr_reader :sex_group_layout
    attr_reader :horizontalSpacer_2
    attr_reader :sex_male
    attr_reader :sex_female
    attr_reader :contact_layout
    attr_reader :contact_checkBox
    attr_reader :contact_edit
    attr_reader :snils_layout
    attr_reader :snils_checkBox
    attr_reader :snils_edit
    attr_reader :document_layout
    attr_reader :document_selecter
    attr_reader :document_checkBox
    attr_reader :document_serial
    attr_reader :document_number
    attr_reader :address_Layout
    attr_reader :address_select_city
    attr_reader :horizontalLayout
    attr_reader :address_type_reg
    attr_reader :address_type_stay
    attr_reader :horizontalSpacer_3
    attr_reader :address_checkBox
    attr_reader :address_select_street
    attr_reader :address_select_area
    attr_reader :horizontalLayout_2
    attr_reader :address_text_home
    attr_reader :address_home
    attr_reader :address_text_korp
    attr_reader :address_korp
    attr_reader :address_text_flat
    attr_reader :address_flat
    attr_reader :horizontalSpacer_4
    attr_reader :verticalSpacer_2
    attr_reader :tab_2
    attr_reader :gridLayout_3
    attr_reader :scrollArea_2
    attr_reader :scrollAreaWidgetContents_2
    attr_reader :gridLayout_6
    attr_reader :gridLayout_5
    attr_reader :event_setDate_start
    attr_reader :event_setDate_checkBox
    attr_reader :event_setDate_end
    attr_reader :verticalSpacer
    attr_reader :verticalLayout_5
    attr_reader :event_nextEventDate_checkBox
    attr_reader :event_nextEventDate_start
    attr_reader :event_nextEventDate_end
    attr_reader :verticalLayout_3
    attr_reader :event_execDate_less
    attr_reader :verticalLayout_2
    attr_reader :event_type_checkBox
    attr_reader :event_type_selecter
    attr_reader :verticalLayout_4
    attr_reader :event_execDate_checkBox
    attr_reader :event_execDate_start
    attr_reader :event_execDate_end
    attr_reader :verticalLayout_6
    attr_reader :orgStructure_checkBox
    attr_reader :orgStructure_selecter
    attr_reader :tab_3
    attr_reader :gridLayout_7
    attr_reader :scrollArea_3
    attr_reader :scrollAreaWidgetContents_3
    attr_reader :menubar
    attr_reader :menu
    attr_reader :menu_2
    attr_reader :menu_6
    attr_reader :menu_3
    attr_reader :menu_event
    attr_reader :menu_7
    attr_reader :menu_9
    attr_reader :menu_8
    attr_reader :menu_4
    attr_reader :menu_5
    attr_reader :statusbar

    def setupUi(search_window)
    if search_window.objectName.nil?
        search_window.objectName = "search_window"
    end
    search_window.resize(1171, 878)
    search_window.styleSheet = ".QComboBox:disabled {\n" \
"	background-color: rgba(240, 240, 240, 0)\n" \
"}\n" \
"\n" \
"QScrollArea { background: transparent; }\n" \
"QScrollArea > QWidget > QWidget { background: transparent; }"
    @menu_Client_lastName = Qt::Action.new(search_window)
    @menu_Client_lastName.objectName = "menu_Client_lastName"
    @menu_Client_lastName.checkable = true
    @menu_Client_lastName.checked = true
    @menu_Client_firstName = Qt::Action.new(search_window)
    @menu_Client_firstName.objectName = "menu_Client_firstName"
    @menu_Client_firstName.checkable = true
    @menu_Client_firstName.checked = true
    @menu_Client_patrName = Qt::Action.new(search_window)
    @menu_Client_patrName.objectName = "menu_Client_patrName"
    @menu_Client_patrName.checkable = true
    @menu_Client_patrName.checked = true
    @menu_Client_patrName.enabled = true
    @menu_Client_patrName.menuRole = Qt::Action::TextHeuristicRole
    @menu_Client_id = Qt::Action.new(search_window)
    @menu_Client_id.objectName = "menu_Client_id"
    @menu_Client_id.checkable = true
    @menu_Client_id.checked = false
    @menu_Client_id.iconVisibleInMenu = false
    @menu_Client_id.priority = Qt::Action::NormalPriority
    @menu_Client_birthDate = Qt::Action.new(search_window)
    @menu_Client_birthDate.objectName = "menu_Client_birthDate"
    @menu_Client_birthDate.checkable = true
    @menu_Client_birthDate.checked = true
    @menu_Client_sex = Qt::Action.new(search_window)
    @menu_Client_sex.objectName = "menu_Client_sex"
    @menu_Client_sex.checkable = true
    @menu_Client_sex.checked = true
    @menu_Client_SNILS = Qt::Action.new(search_window)
    @menu_Client_SNILS.objectName = "menu_Client_SNILS"
    @menu_Client_SNILS.checkable = true
    @menu_Client_SNILS.checked = true
    @menu_Client_bloodType = Qt::Action.new(search_window)
    @menu_Client_bloodType.objectName = "menu_Client_bloodType"
    @menu_Client_bloodType.checkable = true
    @menu_Address_type = Qt::Action.new(search_window)
    @menu_Address_type.objectName = "menu_Address_type"
    @menu_Address_type.checkable = true
    @menu_Address_type.checked = false
    @menu_Address_numApartment = Qt::Action.new(search_window)
    @menu_Address_numApartment.objectName = "menu_Address_numApartment"
    @menu_Address_numApartment.checkable = true
    @menu_Address_numApartment.checked = false
    @menu_Address_numHome = Qt::Action.new(search_window)
    @menu_Address_numHome.objectName = "menu_Address_numHome"
    @menu_Address_numHome.checkable = true
    @menu_Address_street = Qt::Action.new(search_window)
    @menu_Address_street.objectName = "menu_Address_street"
    @menu_Address_street.checkable = true
    @menu_Address_city = Qt::Action.new(search_window)
    @menu_Address_city.objectName = "menu_Address_city"
    @menu_Address_city.checkable = true
    @menu_Address_city.autoRepeat = true
    @action_17 = Qt::Action.new(search_window)
    @action_17.objectName = "action_17"
    @menu_Client_age = Qt::Action.new(search_window)
    @menu_Client_age.objectName = "menu_Client_age"
    @menu_Client_age.checkable = true
    @menu_Client_age.checked = false
    @menu_Address_area = Qt::Action.new(search_window)
    @menu_Address_area.objectName = "menu_Address_area"
    @menu_Address_area.checkable = true
    @export_csv = Qt::Action.new(search_window)
    @export_csv.objectName = "export_csv"
    @export_csv.enabled = true
    @menu_Event_type = Qt::Action.new(search_window)
    @menu_Event_type.objectName = "menu_Event_type"
    @menu_Event_type.checkable = true
    @menu_Event_type.checked = false
    @menu_Event_contract_name = Qt::Action.new(search_window)
    @menu_Event_contract_name.objectName = "menu_Event_contract_name"
    @menu_Event_contract_name.checkable = true
    @menu_Event_contract_resolution = Qt::Action.new(search_window)
    @menu_Event_contract_resolution.objectName = "menu_Event_contract_resolution"
    @menu_Event_contract_resolution.checkable = true
    @menu_Event_contract_finance_name = Qt::Action.new(search_window)
    @menu_Event_contract_finance_name.objectName = "menu_Event_contract_finance_name"
    @menu_Event_contract_finance_name.checkable = true
    @menu_Event_setDate = Qt::Action.new(search_window)
    @menu_Event_setDate.objectName = "menu_Event_setDate"
    @menu_Event_setDate.checkable = true
    @menu_Event_execDate = Qt::Action.new(search_window)
    @menu_Event_execDate.objectName = "menu_Event_execDate"
    @menu_Event_execDate.checkable = true
    @menu_Event_result = Qt::Action.new(search_window)
    @menu_Event_result.objectName = "menu_Event_result"
    @menu_Event_result.checkable = true
    @menu_Event_nextEventDate = Qt::Action.new(search_window)
    @menu_Event_nextEventDate.objectName = "menu_Event_nextEventDate"
    @menu_Event_nextEventDate.checkable = true
    @menu_Event_rangeDate = Qt::Action.new(search_window)
    @menu_Event_rangeDate.objectName = "menu_Event_rangeDate"
    @menu_Event_rangeDate.checkable = true
    @menu_Client_socStatus_citizenship = Qt::Action.new(search_window)
    @menu_Client_socStatus_citizenship.objectName = "menu_Client_socStatus_citizenship"
    @menu_Client_socStatus_citizenship.checkable = true
    @menu_Client_socStatus_rezidence = Qt::Action.new(search_window)
    @menu_Client_socStatus_rezidence.objectName = "menu_Client_socStatus_rezidence"
    @menu_Client_socStatus_rezidence.checkable = true
    @menu_Client_socStatus_disability = Qt::Action.new(search_window)
    @menu_Client_socStatus_disability.objectName = "menu_Client_socStatus_disability"
    @menu_Client_socStatus_disability.checkable = true
    @menu_Client_socStatus_benefit = Qt::Action.new(search_window)
    @menu_Client_socStatus_benefit.objectName = "menu_Client_socStatus_benefit"
    @menu_Client_socStatus_benefit.checkable = true
    @menu_Client_socStatus_capacity = Qt::Action.new(search_window)
    @menu_Client_socStatus_capacity.objectName = "menu_Client_socStatus_capacity"
    @menu_Client_socStatus_capacity.checkable = true
    @menu_Action_sub = Qt::Action.new(search_window)
    @menu_Action_sub.objectName = "menu_Action_sub"
    @menu_Action_sub.checkable = true
    @menu_Action_sub.checked = true
    @menu_Event_MES_code = Qt::Action.new(search_window)
    @menu_Event_MES_code.objectName = "menu_Event_MES_code"
    @menu_Event_MES_code.checkable = true
    @menu_Event_MES_name = Qt::Action.new(search_window)
    @menu_Event_MES_name.objectName = "menu_Event_MES_name"
    @menu_Event_MES_name.checkable = true
    @centralwidget = Qt::Widget.new(search_window)
    @centralwidget.objectName = "centralwidget"
    @gridLayout = Qt::GridLayout.new(@centralwidget)
    @gridLayout.objectName = "gridLayout"
    @splitter = Qt::Splitter.new(@centralwidget)
    @splitter.objectName = "splitter"
    @splitter.orientation = Qt::Horizontal
    @tableView = Qt::TableView.new(@splitter)
    @tableView.objectName = "tableView"
    @sizePolicy = Qt::SizePolicy.new(Qt::SizePolicy::Expanding, Qt::SizePolicy::Expanding)
    @sizePolicy.setHorizontalStretch(1)
    @sizePolicy.setVerticalStretch(1)
    @sizePolicy.heightForWidth = @tableView.sizePolicy.hasHeightForWidth
    @tableView.sizePolicy = @sizePolicy
    @tableView.alternatingRowColors = true
    @splitter.addWidget(@tableView)
    @layoutWidget = Qt::Widget.new(@splitter)
    @layoutWidget.objectName = "layoutWidget"
    @gridLayout_2 = Qt::GridLayout.new(@layoutWidget)
    @gridLayout_2.objectName = "gridLayout_2"
    @gridLayout_2.setContentsMargins(0, 0, 0, 0)
    @horizontalLayout_5 = Qt::HBoxLayout.new()
    @horizontalLayout_5.objectName = "horizontalLayout_5"
    @pushButton_2 = Qt::PushButton.new(@layoutWidget)
    @pushButton_2.objectName = "pushButton_2"

    @horizontalLayout_5.addWidget(@pushButton_2)

    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout_5.addItem(@horizontalSpacer)

    @ok_search_button = Qt::PushButton.new(@layoutWidget)
    @ok_search_button.objectName = "ok_search_button"

    @horizontalLayout_5.addWidget(@ok_search_button)


    @gridLayout_2.addLayout(@horizontalLayout_5, 1, 1, 1, 1)

    @tabWidget_2 = Qt::TabWidget.new(@layoutWidget)
    @tabWidget_2.objectName = "tabWidget_2"
    @sizePolicy1 = Qt::SizePolicy.new(Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)
    @sizePolicy1.setHorizontalStretch(0)
    @sizePolicy1.setVerticalStretch(0)
    @sizePolicy1.heightForWidth = @tabWidget_2.sizePolicy.hasHeightForWidth
    @tabWidget_2.sizePolicy = @sizePolicy1
    @tab = Qt::Widget.new()
    @tab.objectName = "tab"
    @tab.styleSheet = ""
    @gridLayout_4 = Qt::GridLayout.new(@tab)
    @gridLayout_4.objectName = "gridLayout_4"
    @gridLayout_4.setContentsMargins(0, 0, 0, 0)
    @scrollArea = Qt::ScrollArea.new(@tab)
    @scrollArea.objectName = "scrollArea"
    @scrollArea.enabled = true
    @scrollArea.autoFillBackground = false
    @scrollArea.styleSheet = ""
    @scrollArea.frameShape = Qt::Frame::NoFrame
    @scrollArea.frameShadow = Qt::Frame::Plain
    @scrollArea.lineWidth = 0
    @scrollArea.midLineWidth = 0
    @scrollArea.horizontalScrollBarPolicy = Qt::ScrollBarAlwaysOff
    @scrollArea.widgetResizable = true
    @scrollAreaWidgetContents = Qt::Widget.new()
    @scrollAreaWidgetContents.objectName = "scrollAreaWidgetContents"
    @scrollAreaWidgetContents.geometry = Qt::Rect.new(0, 0, 307, 760)
    @scrollAreaWidgetContents.styleSheet = ""
    @verticalLayout = Qt::VBoxLayout.new(@scrollAreaWidgetContents)
    @verticalLayout.objectName = "verticalLayout"
    @id_layout = Qt::GridLayout.new()
    @id_layout.objectName = "id_layout"
    @id_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @id_checkBox.objectName = "id_checkBox"
    @id_checkBox.checked = false

    @id_layout.addWidget(@id_checkBox, 0, 0, 1, 1)

    @id_selecter = Qt::ComboBox.new(@scrollAreaWidgetContents)
    @id_selecter.objectName = "id_selecter"
    @id_selecter.enabled = false
    @id_selecter.styleSheet = ""
    @id_selecter.editable = false
    @id_selecter.sizeAdjustPolicy = Qt::ComboBox::AdjustToMinimumContentsLength
    @id_selecter.duplicatesEnabled = false

    @id_layout.addWidget(@id_selecter, 0, 1, 1, 1)

    @id_edit = Qt::LineEdit.new(@scrollAreaWidgetContents)
    @id_edit.objectName = "id_edit"
    @id_edit.enabled = false

    @id_layout.addWidget(@id_edit, 1, 0, 1, 2)


    @verticalLayout.addLayout(@id_layout)

    @lastName_layout = Qt::VBoxLayout.new()
    @lastName_layout.objectName = "lastName_layout"
    @lastName_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @lastName_checkBox.objectName = "lastName_checkBox"

    @lastName_layout.addWidget(@lastName_checkBox)

    @lastName_edit = Qt::LineEdit.new(@scrollAreaWidgetContents)
    @lastName_edit.objectName = "lastName_edit"
    @lastName_edit.enabled = false

    @lastName_layout.addWidget(@lastName_edit)


    @verticalLayout.addLayout(@lastName_layout)

    @firstName_layout = Qt::VBoxLayout.new()
    @firstName_layout.objectName = "firstName_layout"
    @firstName_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @firstName_checkBox.objectName = "firstName_checkBox"

    @firstName_layout.addWidget(@firstName_checkBox)

    @firstName_edit = Qt::LineEdit.new(@scrollAreaWidgetContents)
    @firstName_edit.objectName = "firstName_edit"
    @firstName_edit.enabled = false

    @firstName_layout.addWidget(@firstName_edit)


    @verticalLayout.addLayout(@firstName_layout)

    @patrName_layout = Qt::VBoxLayout.new()
    @patrName_layout.objectName = "patrName_layout"
    @patrName_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @patrName_checkBox.objectName = "patrName_checkBox"

    @patrName_layout.addWidget(@patrName_checkBox)

    @patrName_edit = Qt::LineEdit.new(@scrollAreaWidgetContents)
    @patrName_edit.objectName = "patrName_edit"
    @patrName_edit.enabled = false

    @patrName_layout.addWidget(@patrName_edit)


    @verticalLayout.addLayout(@patrName_layout)

    @formLayout = Qt::FormLayout.new()
    @formLayout.objectName = "formLayout"
    @birthDate_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @birthDate_checkBox.objectName = "birthDate_checkBox"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @birthDate_checkBox)

    @birthDate_edit_start = Qt::DateEdit.new(@scrollAreaWidgetContents)
    @birthDate_edit_start.objectName = "birthDate_edit_start"
    @birthDate_edit_start.enabled = false
    @birthDate_edit_start.dateTime = Qt::DateTime.new(Qt::Date.new(2000, 1, 1), Qt::Time.new(0, 0, 0))
    @birthDate_edit_start.calendarPopup = true

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @birthDate_edit_start)

    @birthDate_edit_end = Qt::DateEdit.new(@scrollAreaWidgetContents)
    @birthDate_edit_end.objectName = "birthDate_edit_end"
    @birthDate_edit_end.enabled = false
    @birthDate_edit_end.calendarPopup = true

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @birthDate_edit_end)

    @birthDate_checkBox_end = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @birthDate_checkBox_end.objectName = "birthDate_checkBox_end"
    @birthDate_checkBox_end.enabled = false

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @birthDate_checkBox_end)


    @verticalLayout.addLayout(@formLayout)

    @sex_layout = Qt::HBoxLayout.new()
    @sex_layout.objectName = "sex_layout"
    @sex_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @sex_checkBox.objectName = "sex_checkBox"

    @sex_layout.addWidget(@sex_checkBox)

    @sex_group_layout = Qt::HBoxLayout.new()
    @sex_group_layout.objectName = "sex_group_layout"
    @horizontalSpacer_2 = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @sex_group_layout.addItem(@horizontalSpacer_2)

    @sex_male = Qt::RadioButton.new(@scrollAreaWidgetContents)
    @sex_male.objectName = "sex_male"
    @sex_male.enabled = false
    @sex_male.checked = true

    @sex_group_layout.addWidget(@sex_male)

    @sex_female = Qt::RadioButton.new(@scrollAreaWidgetContents)
    @sex_female.objectName = "sex_female"
    @sex_female.enabled = false

    @sex_group_layout.addWidget(@sex_female)


    @sex_layout.addLayout(@sex_group_layout)


    @verticalLayout.addLayout(@sex_layout)

    @contact_layout = Qt::HBoxLayout.new()
    @contact_layout.objectName = "contact_layout"
    @contact_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @contact_checkBox.objectName = "contact_checkBox"

    @contact_layout.addWidget(@contact_checkBox)

    @contact_edit = Qt::LineEdit.new(@scrollAreaWidgetContents)
    @contact_edit.objectName = "contact_edit"
    @contact_edit.enabled = false

    @contact_layout.addWidget(@contact_edit)


    @verticalLayout.addLayout(@contact_layout)

    @snils_layout = Qt::HBoxLayout.new()
    @snils_layout.objectName = "snils_layout"
    @snils_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @snils_checkBox.objectName = "snils_checkBox"

    @snils_layout.addWidget(@snils_checkBox)

    @snils_edit = Qt::LineEdit.new(@scrollAreaWidgetContents)
    @snils_edit.objectName = "snils_edit"
    @snils_edit.enabled = false

    @snils_layout.addWidget(@snils_edit)


    @verticalLayout.addLayout(@snils_layout)

    @document_layout = Qt::GridLayout.new()
    @document_layout.objectName = "document_layout"
    @document_selecter = Qt::ComboBox.new(@scrollAreaWidgetContents)
    @document_selecter.objectName = "document_selecter"
    @document_selecter.enabled = false

    @document_layout.addWidget(@document_selecter, 0, 1, 1, 1)

    @document_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @document_checkBox.objectName = "document_checkBox"

    @document_layout.addWidget(@document_checkBox, 0, 0, 1, 1)

    @document_serial = Qt::LineEdit.new(@scrollAreaWidgetContents)
    @document_serial.objectName = "document_serial"
    @document_serial.enabled = false

    @document_layout.addWidget(@document_serial, 1, 0, 1, 1)

    @document_number = Qt::LineEdit.new(@scrollAreaWidgetContents)
    @document_number.objectName = "document_number"
    @document_number.enabled = false

    @document_layout.addWidget(@document_number, 1, 1, 1, 1)


    @verticalLayout.addLayout(@document_layout)

    @address_Layout = Qt::GridLayout.new()
    @address_Layout.objectName = "address_Layout"
    @address_select_city = Qt::ComboBox.new(@scrollAreaWidgetContents)
    @address_select_city.objectName = "address_select_city"
    @address_select_city.enabled = false

    @address_Layout.addWidget(@address_select_city, 2, 0, 1, 3)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @address_type_reg = Qt::RadioButton.new(@scrollAreaWidgetContents)
    @address_type_reg.objectName = "address_type_reg"
    @address_type_reg.enabled = false
    @address_type_reg.checkable = true
    @address_type_reg.checked = true

    @horizontalLayout.addWidget(@address_type_reg)

    @address_type_stay = Qt::RadioButton.new(@scrollAreaWidgetContents)
    @address_type_stay.objectName = "address_type_stay"
    @address_type_stay.enabled = false
    @address_type_stay.checkable = true
    @address_type_stay.checked = false

    @horizontalLayout.addWidget(@address_type_stay)


    @address_Layout.addLayout(@horizontalLayout, 0, 2, 1, 1)

    @horizontalSpacer_3 = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @address_Layout.addItem(@horizontalSpacer_3, 0, 1, 1, 1)

    @address_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @address_checkBox.objectName = "address_checkBox"

    @address_Layout.addWidget(@address_checkBox, 0, 0, 1, 1)

    @address_select_street = Qt::ComboBox.new(@scrollAreaWidgetContents)
    @address_select_street.objectName = "address_select_street"
    @address_select_street.enabled = false

    @address_Layout.addWidget(@address_select_street, 3, 0, 1, 3)

    @address_select_area = Qt::ComboBox.new(@scrollAreaWidgetContents)
    @address_select_area.objectName = "address_select_area"
    @address_select_area.enabled = false

    @address_Layout.addWidget(@address_select_area, 1, 0, 1, 3)

    @horizontalLayout_2 = Qt::HBoxLayout.new()
    @horizontalLayout_2.objectName = "horizontalLayout_2"
    @address_text_home = Qt::Label.new(@scrollAreaWidgetContents)
    @address_text_home.objectName = "address_text_home"
    @address_text_home.enabled = false

    @horizontalLayout_2.addWidget(@address_text_home)

    @address_home = Qt::LineEdit.new(@scrollAreaWidgetContents)
    @address_home.objectName = "address_home"
    @address_home.enabled = false
    @sizePolicy2 = Qt::SizePolicy.new(Qt::SizePolicy::Preferred, Qt::SizePolicy::Fixed)
    @sizePolicy2.setHorizontalStretch(0)
    @sizePolicy2.setVerticalStretch(0)
    @sizePolicy2.heightForWidth = @address_home.sizePolicy.hasHeightForWidth
    @address_home.sizePolicy = @sizePolicy2
    @address_home.minimumSize = Qt::Size.new(50, 0)
    @address_home.maximumSize = Qt::Size.new(50, 16777215)

    @horizontalLayout_2.addWidget(@address_home)

    @address_text_korp = Qt::Label.new(@scrollAreaWidgetContents)
    @address_text_korp.objectName = "address_text_korp"
    @address_text_korp.enabled = false

    @horizontalLayout_2.addWidget(@address_text_korp)

    @address_korp = Qt::LineEdit.new(@scrollAreaWidgetContents)
    @address_korp.objectName = "address_korp"
    @address_korp.enabled = false
    @sizePolicy3 = Qt::SizePolicy.new(Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)
    @sizePolicy3.setHorizontalStretch(0)
    @sizePolicy3.setVerticalStretch(0)
    @sizePolicy3.heightForWidth = @address_korp.sizePolicy.hasHeightForWidth
    @address_korp.sizePolicy = @sizePolicy3
    @address_korp.maximumSize = Qt::Size.new(50, 16777215)

    @horizontalLayout_2.addWidget(@address_korp)

    @address_text_flat = Qt::Label.new(@scrollAreaWidgetContents)
    @address_text_flat.objectName = "address_text_flat"
    @address_text_flat.enabled = false

    @horizontalLayout_2.addWidget(@address_text_flat)

    @address_flat = Qt::LineEdit.new(@scrollAreaWidgetContents)
    @address_flat.objectName = "address_flat"
    @address_flat.enabled = false
    @address_flat.maximumSize = Qt::Size.new(50, 16777215)

    @horizontalLayout_2.addWidget(@address_flat)

    @horizontalSpacer_4 = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout_2.addItem(@horizontalSpacer_4)


    @address_Layout.addLayout(@horizontalLayout_2, 4, 0, 1, 3)


    @verticalLayout.addLayout(@address_Layout)

    @verticalSpacer_2 = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @verticalLayout.addItem(@verticalSpacer_2)

    @scrollArea.setWidget(@scrollAreaWidgetContents)

    @gridLayout_4.addWidget(@scrollArea, 0, 0, 1, 1)

    @tabWidget_2.addTab(@tab, Qt::Application.translate("Search_window", "\320\232\320\260\321\200\321\202\320\276\321\202\320\265\320\272\320\260", nil, Qt::Application::UnicodeUTF8))
    @tab_2 = Qt::Widget.new()
    @tab_2.objectName = "tab_2"
    @gridLayout_3 = Qt::GridLayout.new(@tab_2)
    @gridLayout_3.objectName = "gridLayout_3"
    @gridLayout_3.setContentsMargins(0, 0, 0, 0)
    @scrollArea_2 = Qt::ScrollArea.new(@tab_2)
    @scrollArea_2.objectName = "scrollArea_2"
    @scrollArea_2.frameShape = Qt::Frame::NoFrame
    @scrollArea_2.widgetResizable = true
    @scrollAreaWidgetContents_2 = Qt::Widget.new()
    @scrollAreaWidgetContents_2.objectName = "scrollAreaWidgetContents_2"
    @scrollAreaWidgetContents_2.geometry = Qt::Rect.new(0, 0, 307, 760)
    @gridLayout_6 = Qt::GridLayout.new(@scrollAreaWidgetContents_2)
    @gridLayout_6.objectName = "gridLayout_6"
    @gridLayout_5 = Qt::GridLayout.new()
    @gridLayout_5.objectName = "gridLayout_5"
    @event_setDate_start = Qt::DateEdit.new(@scrollAreaWidgetContents_2)
    @event_setDate_start.objectName = "event_setDate_start"
    @event_setDate_start.enabled = false
    @event_setDate_start.wrapping = false
    @event_setDate_start.calendarPopup = true

    @gridLayout_5.addWidget(@event_setDate_start, 1, 0, 1, 1)

    @event_setDate_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents_2)
    @event_setDate_checkBox.objectName = "event_setDate_checkBox"

    @gridLayout_5.addWidget(@event_setDate_checkBox, 0, 0, 1, 1)

    @event_setDate_end = Qt::DateEdit.new(@scrollAreaWidgetContents_2)
    @event_setDate_end.objectName = "event_setDate_end"
    @event_setDate_end.enabled = false
    @event_setDate_end.calendarPopup = true

    @gridLayout_5.addWidget(@event_setDate_end, 2, 0, 1, 1)


    @gridLayout_6.addLayout(@gridLayout_5, 1, 0, 1, 1)

    @verticalSpacer = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @gridLayout_6.addItem(@verticalSpacer, 6, 0, 1, 1)

    @verticalLayout_5 = Qt::VBoxLayout.new()
    @verticalLayout_5.objectName = "verticalLayout_5"
    @event_nextEventDate_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents_2)
    @event_nextEventDate_checkBox.objectName = "event_nextEventDate_checkBox"

    @verticalLayout_5.addWidget(@event_nextEventDate_checkBox)

    @event_nextEventDate_start = Qt::DateEdit.new(@scrollAreaWidgetContents_2)
    @event_nextEventDate_start.objectName = "event_nextEventDate_start"
    @event_nextEventDate_start.enabled = false
    @event_nextEventDate_start.calendarPopup = true

    @verticalLayout_5.addWidget(@event_nextEventDate_start)

    @event_nextEventDate_end = Qt::DateEdit.new(@scrollAreaWidgetContents_2)
    @event_nextEventDate_end.objectName = "event_nextEventDate_end"
    @event_nextEventDate_end.enabled = false
    @event_nextEventDate_end.calendarPopup = true

    @verticalLayout_5.addWidget(@event_nextEventDate_end)


    @gridLayout_6.addLayout(@verticalLayout_5, 4, 0, 1, 1)

    @verticalLayout_3 = Qt::VBoxLayout.new()
    @verticalLayout_3.objectName = "verticalLayout_3"
    @event_execDate_less = Qt::CheckBox.new(@scrollAreaWidgetContents_2)
    @event_execDate_less.objectName = "event_execDate_less"

    @verticalLayout_3.addWidget(@event_execDate_less)


    @gridLayout_6.addLayout(@verticalLayout_3, 2, 0, 1, 1)

    @verticalLayout_2 = Qt::VBoxLayout.new()
    @verticalLayout_2.objectName = "verticalLayout_2"
    @event_type_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents_2)
    @event_type_checkBox.objectName = "event_type_checkBox"

    @verticalLayout_2.addWidget(@event_type_checkBox)

    @event_type_selecter = Qt::ComboBox.new(@scrollAreaWidgetContents_2)
    @event_type_selecter.objectName = "event_type_selecter"
    @event_type_selecter.enabled = false

    @verticalLayout_2.addWidget(@event_type_selecter)


    @gridLayout_6.addLayout(@verticalLayout_2, 0, 0, 1, 1)

    @verticalLayout_4 = Qt::VBoxLayout.new()
    @verticalLayout_4.objectName = "verticalLayout_4"
    @event_execDate_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents_2)
    @event_execDate_checkBox.objectName = "event_execDate_checkBox"

    @verticalLayout_4.addWidget(@event_execDate_checkBox)

    @event_execDate_start = Qt::DateEdit.new(@scrollAreaWidgetContents_2)
    @event_execDate_start.objectName = "event_execDate_start"
    @event_execDate_start.enabled = false
    @event_execDate_start.calendarPopup = true

    @verticalLayout_4.addWidget(@event_execDate_start)

    @event_execDate_end = Qt::DateEdit.new(@scrollAreaWidgetContents_2)
    @event_execDate_end.objectName = "event_execDate_end"
    @event_execDate_end.enabled = false
    @event_execDate_end.calendarPopup = true

    @verticalLayout_4.addWidget(@event_execDate_end)


    @gridLayout_6.addLayout(@verticalLayout_4, 3, 0, 1, 1)

    @verticalLayout_6 = Qt::VBoxLayout.new()
    @verticalLayout_6.objectName = "verticalLayout_6"
    @orgStructure_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents_2)
    @orgStructure_checkBox.objectName = "orgStructure_checkBox"

    @verticalLayout_6.addWidget(@orgStructure_checkBox)

    @orgStructure_selecter = Qt::ComboBox.new(@scrollAreaWidgetContents_2)
    @orgStructure_selecter.objectName = "orgStructure_selecter"
    @orgStructure_selecter.enabled = false

    @verticalLayout_6.addWidget(@orgStructure_selecter)


    @gridLayout_6.addLayout(@verticalLayout_6, 5, 0, 1, 1)

    @scrollArea_2.setWidget(@scrollAreaWidgetContents_2)

    @gridLayout_3.addWidget(@scrollArea_2, 0, 0, 1, 1)

    @tabWidget_2.addTab(@tab_2, Qt::Application.translate("Search_window", "\320\236\320\261\321\200\320\260\321\211\320\265\320\275\320\270\320\265", nil, Qt::Application::UnicodeUTF8))
    @tab_3 = Qt::Widget.new()
    @tab_3.objectName = "tab_3"
    @gridLayout_7 = Qt::GridLayout.new(@tab_3)
    @gridLayout_7.objectName = "gridLayout_7"
    @scrollArea_3 = Qt::ScrollArea.new(@tab_3)
    @scrollArea_3.objectName = "scrollArea_3"
    @scrollArea_3.frameShape = Qt::Frame::NoFrame
    @scrollArea_3.widgetResizable = true
    @scrollAreaWidgetContents_3 = Qt::Widget.new()
    @scrollAreaWidgetContents_3.objectName = "scrollAreaWidgetContents_3"
    @scrollAreaWidgetContents_3.geometry = Qt::Rect.new(0, 0, 289, 742)
    @scrollArea_3.setWidget(@scrollAreaWidgetContents_3)

    @gridLayout_7.addWidget(@scrollArea_3, 0, 0, 1, 1)

    @tabWidget_2.addTab(@tab_3, Qt::Application.translate("Search_window", "\320\224\320\265\320\271\321\201\321\202\320\262\320\270\321\217", nil, Qt::Application::UnicodeUTF8))

    @gridLayout_2.addWidget(@tabWidget_2, 0, 1, 1, 1)

    @splitter.addWidget(@layoutWidget)

    @gridLayout.addWidget(@splitter, 0, 0, 1, 1)

    search_window.centralWidget = @centralwidget
    @menubar = Qt::MenuBar.new(search_window)
    @menubar.objectName = "menubar"
    @menubar.geometry = Qt::Rect.new(0, 0, 1171, 21)
    @menu = Qt::Menu.new(@menubar)
    @menu.objectName = "menu"
    @menu_2 = Qt::Menu.new(@menu)
    @menu_2.objectName = "menu_2"
    @menu_6 = Qt::Menu.new(@menu_2)
    @menu_6.objectName = "menu_6"
    @menu_3 = Qt::Menu.new(@menu)
    @menu_3.objectName = "menu_3"
    @menu_event = Qt::Menu.new(@menu)
    @menu_event.objectName = "menu_event"
    @menu_7 = Qt::Menu.new(@menu_event)
    @menu_7.objectName = "menu_7"
    @menu_9 = Qt::Menu.new(@menu_event)
    @menu_9.objectName = "menu_9"
    @menu_8 = Qt::Menu.new(@menu)
    @menu_8.objectName = "menu_8"
    @menu_4 = Qt::Menu.new(@menubar)
    @menu_4.objectName = "menu_4"
    @menu_5 = Qt::Menu.new(@menu_4)
    @menu_5.objectName = "menu_5"
    search_window.setMenuBar(@menubar)
    @statusbar = Qt::StatusBar.new(search_window)
    @statusbar.objectName = "statusbar"
    @statusbar.enabled = true
    search_window.statusBar = @statusbar

    @menubar.addAction(@menu.menuAction())
    @menubar.addAction(@menu_4.menuAction())
    @menu.addAction(@menu_2.menuAction())
    @menu.addAction(@menu_3.menuAction())
    @menu.addAction(@menu_event.menuAction())
    @menu.addAction(@menu_8.menuAction())
    @menu_2.addSeparator()
    @menu_2.addAction(@menu_Client_id)
    @menu_2.addAction(@menu_Client_lastName)
    @menu_2.addAction(@menu_Client_firstName)
    @menu_2.addAction(@menu_Client_patrName)
    @menu_2.addAction(@menu_Client_birthDate)
    @menu_2.addAction(@menu_Client_age)
    @menu_2.addAction(@menu_Client_sex)
    @menu_2.addAction(@menu_Client_SNILS)
    @menu_2.addAction(@menu_Client_bloodType)
    @menu_2.addAction(@menu_6.menuAction())
    @menu_6.addAction(@menu_Client_socStatus_citizenship)
    @menu_6.addAction(@menu_Client_socStatus_rezidence)
    @menu_6.addAction(@menu_Client_socStatus_disability)
    @menu_6.addAction(@menu_Client_socStatus_benefit)
    @menu_6.addAction(@menu_Client_socStatus_capacity)
    @menu_3.addAction(@menu_Address_type)
    @menu_3.addAction(@menu_Address_numApartment)
    @menu_3.addAction(@menu_Address_numHome)
    @menu_3.addAction(@menu_Address_street)
    @menu_3.addAction(@menu_Address_city)
    @menu_3.addAction(@menu_Address_area)
    @menu_event.addAction(@menu_Event_type)
    @menu_event.addAction(@menu_7.menuAction())
    @menu_event.addAction(@menu_Event_setDate)
    @menu_event.addAction(@menu_Event_execDate)
    @menu_event.addAction(@menu_Event_result)
    @menu_event.addAction(@menu_Event_nextEventDate)
    @menu_event.addAction(@menu_9.menuAction())
    @menu_event.addAction(@menu_Event_rangeDate)
    @menu_7.addAction(@menu_Event_contract_name)
    @menu_7.addAction(@menu_Event_contract_resolution)
    @menu_7.addAction(@menu_Event_contract_finance_name)
    @menu_9.addAction(@menu_Event_MES_code)
    @menu_9.addAction(@menu_Event_MES_name)
    @menu_8.addAction(@menu_Action_sub)
    @menu_4.addAction(@menu_5.menuAction())
    @menu_5.addAction(@export_csv)

    retranslateUi(search_window)
    Qt::Object.connect(@document_checkBox, SIGNAL('clicked(bool)'), @document_number, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@document_checkBox, SIGNAL('clicked(bool)'), @document_selecter, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@lastName_checkBox, SIGNAL('clicked(bool)'), @lastName_edit, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_type_stay, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@sex_checkBox, SIGNAL('clicked(bool)'), @sex_male, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@snils_checkBox, SIGNAL('clicked(bool)'), @snils_edit, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@contact_checkBox, SIGNAL('clicked(bool)'), @contact_edit, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_type_reg, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@firstName_checkBox, SIGNAL('clicked(bool)'), @firstName_edit, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@sex_checkBox, SIGNAL('clicked(bool)'), @sex_female, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@birthDate_checkBox_end, SIGNAL('clicked(bool)'), @birthDate_edit_end, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@patrName_checkBox, SIGNAL('clicked(bool)'), @patrName_edit, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@document_checkBox, SIGNAL('clicked(bool)'), @document_serial, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_select_area, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_select_city, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_select_street, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_text_flat, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_text_home, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_text_korp, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_flat, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_home, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_korp, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@event_type_checkBox, SIGNAL('clicked(bool)'), @event_type_selecter, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@event_setDate_checkBox, SIGNAL('clicked(bool)'), @event_setDate_end, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@event_setDate_checkBox, SIGNAL('clicked(bool)'), @event_setDate_start, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@event_execDate_checkBox, SIGNAL('clicked(bool)'), @event_execDate_end, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@event_execDate_checkBox, SIGNAL('clicked(bool)'), @event_execDate_start, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@event_nextEventDate_checkBox, SIGNAL('clicked(bool)'), @event_nextEventDate_end, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@event_nextEventDate_checkBox, SIGNAL('clicked(bool)'), @event_nextEventDate_start, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@orgStructure_checkBox, SIGNAL('clicked(bool)'), @orgStructure_selecter, SLOT('setEnabled(bool)'))

    @tabWidget_2.setCurrentIndex(2)


    Qt::MetaObject.connectSlotsByName(search_window)
    end # setupUi

    def setup_ui(search_window)
        setupUi(search_window)
    end

    def retranslateUi(search_window)
    search_window.windowTitle = Qt::Application.translate("Search_window", "\320\241\321\202\320\260\321\202\320\270\321\201\321\202\320\270\320\272\320\260", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_lastName.text = Qt::Application.translate("Search_window", "\320\244\320\260\320\274\320\270\320\273\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_firstName.text = Qt::Application.translate("Search_window", "\320\230\320\274\321\217", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_patrName.text = Qt::Application.translate("Search_window", "\320\236\321\202\321\207\320\265\321\201\321\202\320\262\320\276", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_id.text = Qt::Application.translate("Search_window", "\320\230\320\264", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_birthDate.text = Qt::Application.translate("Search_window", "\320\224\320\260\321\202\320\260 \321\200\320\276\320\266\320\264\320\265\320\275\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_sex.text = Qt::Application.translate("Search_window", "\320\237\320\276\320\273", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_SNILS.text = Qt::Application.translate("Search_window", "\320\241\320\275\320\270\320\273\321\201", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_bloodType.text = Qt::Application.translate("Search_window", "\320\223\321\200\321\203\320\277\320\277\320\260 \320\272\321\200\320\276\320\262\320\270", nil, Qt::Application::UnicodeUTF8)
    @menu_Address_type.text = Qt::Application.translate("Search_window", "\320\242\320\270\320\277", nil, Qt::Application::UnicodeUTF8)
    @menu_Address_numApartment.text = Qt::Application.translate("Search_window", "\320\235\320\276\320\274\320\265\321\200 \320\272\320\262\320\260\321\200\321\202\320\270\321\200\321\213", nil, Qt::Application::UnicodeUTF8)
    @menu_Address_numHome.text = Qt::Application.translate("Search_window", "\320\235\320\276\320\274\320\265\321\200 \320\264\320\276\320\274\320\260", nil, Qt::Application::UnicodeUTF8)
    @menu_Address_street.text = Qt::Application.translate("Search_window", "\320\243\320\273\320\270\321\206\320\260", nil, Qt::Application::UnicodeUTF8)
    @menu_Address_city.text = Qt::Application.translate("Search_window", "\320\223\320\276\321\200\320\276\320\264", nil, Qt::Application::UnicodeUTF8)
    @action_17.text = Qt::Application.translate("Search_window", "\320\237\320\276\320\273", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_age.text = Qt::Application.translate("Search_window", "\320\222\320\276\320\267\321\200\320\260\321\201\321\202", nil, Qt::Application::UnicodeUTF8)
    @menu_Address_area.text = Qt::Application.translate("Search_window", "\320\236\320\261\320\273\320\260\321\201\321\202\321\214", nil, Qt::Application::UnicodeUTF8)
    @export_csv.text = Qt::Application.translate("Search_window", "CSV", nil, Qt::Application::UnicodeUTF8)
    @menu_Event_type.text = Qt::Application.translate("Search_window", "\320\242\320\270\320\277 \321\201\320\276\320\261\321\213\321\202\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @menu_Event_contract_name.text = Qt::Application.translate("Search_window", "\320\235\320\276\320\274\320\265\321\200", nil, Qt::Application::UnicodeUTF8)
    @menu_Event_contract_resolution.text = Qt::Application.translate("Search_window", "\320\237\320\276\321\201\321\202\320\260\320\275\320\276\320\262\320\273\320\265\320\275\320\270\320\265", nil, Qt::Application::UnicodeUTF8)
    @menu_Event_contract_finance_name.text = Qt::Application.translate("Search_window", "\320\230\321\201\321\202\320\276\321\207\320\275\320\270\320\272 \321\204\320\270\320\275\320\260\320\275\321\201\320\270\321\200\320\276\320\262\320\260\320\275\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @menu_Event_setDate.text = Qt::Application.translate("Search_window", "\320\224\320\260\321\202\320\260 \320\275\320\260\321\207\320\260\320\273\320\260", nil, Qt::Application::UnicodeUTF8)
    @menu_Event_execDate.text = Qt::Application.translate("Search_window", "\320\224\320\260\321\202\320\260 \320\262\321\213\320\277\320\276\320\273\320\275\320\265\320\275\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @menu_Event_result.text = Qt::Application.translate("Search_window", "\320\240\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202", nil, Qt::Application::UnicodeUTF8)
    @menu_Event_nextEventDate.text = Qt::Application.translate("Search_window", "\320\224\320\260\321\202\320\260 \321\201\320\273\320\265\320\264\321\203\321\216\321\211\320\265\320\271 \321\217\320\262\320\272\320\270", nil, Qt::Application::UnicodeUTF8)
    @menu_Event_rangeDate.text = Qt::Application.translate("Search_window", "\320\224\320\273\320\270\321\202\320\265\320\273\321\214\320\275\320\276\321\201\321\202\321\214 \320\273\320\265\321\207\320\265\320\275\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_socStatus_citizenship.text = Qt::Application.translate("Search_window", "\320\223\321\200\320\260\320\266\320\264\320\260\320\275\321\201\321\202\320\262\320\276", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_socStatus_rezidence.text = Qt::Application.translate("Search_window", "\320\237\321\200\320\276\320\266\320\270\320\262\320\260\320\275\320\270\320\265", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_socStatus_disability.text = Qt::Application.translate("Search_window", "\320\230\320\275\320\262\320\260\320\273\320\270\320\264\320\275\320\276\321\201\321\202\321\214", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_socStatus_benefit.text = Qt::Application.translate("Search_window", "\320\233\321\214\320\263\320\276\321\202\320\260", nil, Qt::Application::UnicodeUTF8)
    @menu_Client_socStatus_capacity.text = Qt::Application.translate("Search_window", "\320\224\320\265\320\265\321\201\320\277\320\276\321\201\320\276\320\261\320\275\320\276\321\201\321\202\321\214", nil, Qt::Application::UnicodeUTF8)
    @menu_Action_sub.text = Qt::Application.translate("Search_window", "\320\237\320\276\320\264\321\200\320\260\320\267\320\264\320\265\320\273\320\265\320\275\320\270\320\265", nil, Qt::Application::UnicodeUTF8)
    @menu_Event_MES_code.text = Qt::Application.translate("Search_window", "\320\232\320\276\320\264", nil, Qt::Application::UnicodeUTF8)
    @menu_Event_MES_name.text = Qt::Application.translate("Search_window", "\320\235\320\260\320\267\320\262\320\260\320\275\320\270\320\265", nil, Qt::Application::UnicodeUTF8)
    @pushButton_2.text = Qt::Application.translate("Search_window", "\320\241\320\261\321\200\320\276\321\201\320\270\321\202\321\214", nil, Qt::Application::UnicodeUTF8)
    @ok_search_button.text = Qt::Application.translate("Search_window", "\320\237\321\200\320\270\320\274\320\265\320\275\320\270\321\202\321\214", nil, Qt::Application::UnicodeUTF8)
    @id_checkBox.text = Qt::Application.translate("Search_window", "\320\232\320\276\320\264", nil, Qt::Application::UnicodeUTF8)
    @id_edit.text = Qt::Application.translate("Search_window", "70650", nil, Qt::Application::UnicodeUTF8)
    @lastName_checkBox.text = Qt::Application.translate("Search_window", "\320\244\320\260\320\274\320\270\320\273\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @firstName_checkBox.text = Qt::Application.translate("Search_window", "\320\230\320\274\321\217", nil, Qt::Application::UnicodeUTF8)
    @patrName_checkBox.text = Qt::Application.translate("Search_window", "\320\236\321\202\321\207\320\265\321\201\321\202\320\262\320\276", nil, Qt::Application::UnicodeUTF8)
    @birthDate_checkBox.text = Qt::Application.translate("Search_window", "\320\224\320\260\321\202\320\260 \321\200\320\276\320\266\320\264\320\265\320\275\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @birthDate_checkBox_end.text = Qt::Application.translate("Search_window", "\320\277\320\276", nil, Qt::Application::UnicodeUTF8)
    @sex_checkBox.text = Qt::Application.translate("Search_window", "\320\237\320\276\320\273", nil, Qt::Application::UnicodeUTF8)
    @sex_male.text = Qt::Application.translate("Search_window", "\320\234", nil, Qt::Application::UnicodeUTF8)
    @sex_female.text = Qt::Application.translate("Search_window", "\320\226", nil, Qt::Application::UnicodeUTF8)
    @contact_checkBox.text = Qt::Application.translate("Search_window", "\320\232\320\276\320\275\321\202\320\260\320\272\321\202", nil, Qt::Application::UnicodeUTF8)
    @snils_checkBox.text = Qt::Application.translate("Search_window", "\320\241\320\235\320\230\320\233\320\241", nil, Qt::Application::UnicodeUTF8)
    @document_checkBox.text = Qt::Application.translate("Search_window", "\320\224\320\276\320\272\321\203\320\274\320\265\320\275\321\202", nil, Qt::Application::UnicodeUTF8)
    @address_type_reg.text = Qt::Application.translate("Search_window", "\320\240\320\265\320\263\320\270\321\201\321\202\321\200\320\260\321\206\320\270\320\270", nil, Qt::Application::UnicodeUTF8)
    @address_type_stay.text = Qt::Application.translate("Search_window", "\320\237\321\200\320\276\320\266\320\270\320\262\320\260\320\275\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @address_checkBox.text = Qt::Application.translate("Search_window", "\320\220\320\264\321\200\320\265\321\201", nil, Qt::Application::UnicodeUTF8)
    @address_text_home.text = Qt::Application.translate("Search_window", "\320\224\320\276\320\274", nil, Qt::Application::UnicodeUTF8)
    @address_text_korp.text = Qt::Application.translate("Search_window", "\320\232\320\276\321\200\320\277", nil, Qt::Application::UnicodeUTF8)
    @address_text_flat.text = Qt::Application.translate("Search_window", "\320\232\320\262", nil, Qt::Application::UnicodeUTF8)
    @tabWidget_2.setTabText(@tabWidget_2.indexOf(@tab), Qt::Application.translate("Search_window", "\320\232\320\260\321\200\321\202\320\276\321\202\320\265\320\272\320\260", nil, Qt::Application::UnicodeUTF8))
    @event_setDate_checkBox.text = Qt::Application.translate("Search_window", "\320\224\320\260\321\202\320\260 \320\275\320\260\320\267\320\275\320\260\321\207\320\265\320\275\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @event_nextEventDate_checkBox.text = Qt::Application.translate("Search_window", "\320\224\320\260\321\202\320\260 \321\201\320\273\320\265\320\264\321\203\321\216\321\211\320\265\320\271 \321\217\320\262\320\272\320\270", nil, Qt::Application::UnicodeUTF8)
    @event_execDate_less.text = Qt::Application.translate("Search_window", "\320\235\320\265 \320\262\321\213\320\277\320\276\320\273\320\275\320\265\320\275\320\276", nil, Qt::Application::UnicodeUTF8)
    @event_type_checkBox.text = Qt::Application.translate("Search_window", "\320\242\320\270\320\277", nil, Qt::Application::UnicodeUTF8)
    @event_execDate_checkBox.text = Qt::Application.translate("Search_window", "\320\224\320\260\321\202\320\260 \320\262\321\213\320\277\320\276\320\273\320\275\320\265\320\275\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @orgStructure_checkBox.text = Qt::Application.translate("Search_window", "\320\237\320\276\320\264\321\200\320\260\320\267\320\264\320\265\320\273\320\265\320\275\320\270\320\265", nil, Qt::Application::UnicodeUTF8)
    @tabWidget_2.setTabText(@tabWidget_2.indexOf(@tab_2), Qt::Application.translate("Search_window", "\320\236\320\261\321\200\320\260\321\211\320\265\320\275\320\270\320\265", nil, Qt::Application::UnicodeUTF8))
    @tabWidget_2.setTabText(@tabWidget_2.indexOf(@tab_3), Qt::Application.translate("Search_window", "\320\224\320\265\320\271\321\201\321\202\320\262\320\270\321\217", nil, Qt::Application::UnicodeUTF8))
    @menu.title = Qt::Application.translate("Search_window", "\320\241\321\202\320\276\320\273\320\261\321\206\321\213", nil, Qt::Application::UnicodeUTF8)
    @menu_2.title = Qt::Application.translate("Search_window", "\320\237\320\260\321\206\320\270\320\265\320\275\321\202", nil, Qt::Application::UnicodeUTF8)
    @menu_6.title = Qt::Application.translate("Search_window", "\320\241\320\276\321\206\320\270\320\260\320\273\321\214\320\275\321\213\320\271 \321\201\321\202\320\260\321\202\321\203\321\201", nil, Qt::Application::UnicodeUTF8)
    @menu_3.title = Qt::Application.translate("Search_window", "\320\220\320\264\321\200\320\265\321\201", nil, Qt::Application::UnicodeUTF8)
    @menu_event.title = Qt::Application.translate("Search_window", "\320\241\320\276\320\261\321\213\321\202\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @menu_7.title = Qt::Application.translate("Search_window", "\320\224\320\276\320\263\320\276\320\262\320\276\321\200", nil, Qt::Application::UnicodeUTF8)
    @menu_9.title = Qt::Application.translate("Search_window", "\320\234\320\255\320\241", nil, Qt::Application::UnicodeUTF8)
    @menu_8.title = Qt::Application.translate("Search_window", "\320\224\320\265\320\271\321\201\321\202\320\262\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @menu_4.title = Qt::Application.translate("Search_window", "\320\240\320\265\320\267\321\203\320\273\321\214\321\202\320\260\321\202\321\213 \320\267\320\260\320\277\321\200\320\276\321\201\320\260", nil, Qt::Application::UnicodeUTF8)
    @menu_5.title = Qt::Application.translate("Search_window", "\320\255\320\272\321\201\320\277\320\276\321\200\321\202", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(search_window)
        retranslateUi(search_window)
    end

end

module Ui
    class Search_window < Ui_Search_window
    end
end  # module Ui

