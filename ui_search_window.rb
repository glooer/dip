=begin
** Form generated from reading ui file 'search_window.ui'
**
** Created: �� 23. ��� 23:52:11 2016
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
    attr_reader :horizontalLayout
    attr_reader :address_type_reg
    attr_reader :address_type_stay
    attr_reader :address_checkBox
    attr_reader :horizontalSpacer_3
    attr_reader :verticalSpacer_2
    attr_reader :menubar
    attr_reader :menu
    attr_reader :menu_2
    attr_reader :menu_3
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
"}"
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
    @scrollArea.styleSheet = "QScrollArea { background: transparent; }\n" \
"QScrollArea > QWidget > QWidget { background: transparent; }"
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

    @address_checkBox = Qt::CheckBox.new(@scrollAreaWidgetContents)
    @address_checkBox.objectName = "address_checkBox"

    @address_Layout.addWidget(@address_checkBox, 0, 0, 1, 1)

    @horizontalSpacer_3 = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @address_Layout.addItem(@horizontalSpacer_3, 0, 1, 1, 1)


    @verticalLayout.addLayout(@address_Layout)

    @verticalSpacer_2 = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @verticalLayout.addItem(@verticalSpacer_2)

    @scrollArea.setWidget(@scrollAreaWidgetContents)

    @gridLayout_4.addWidget(@scrollArea, 0, 0, 1, 1)

    @tabWidget_2.addTab(@tab, Qt::Application.translate("Search_window", "\320\236\321\201\320\275\320\276\320\262\320\275\320\276\320\265", nil, Qt::Application::UnicodeUTF8))

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
    @menu_3 = Qt::Menu.new(@menu)
    @menu_3.objectName = "menu_3"
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
    @menu_3.addAction(@menu_Address_type)
    @menu_3.addAction(@menu_Address_numApartment)
    @menu_3.addAction(@menu_Address_numHome)
    @menu_3.addAction(@menu_Address_street)
    @menu_3.addAction(@menu_Address_city)
    @menu_3.addAction(@menu_Address_area)
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

    @tabWidget_2.setCurrentIndex(0)


    Qt::MetaObject.connectSlotsByName(search_window)
    end # setupUi

    def setup_ui(search_window)
        setupUi(search_window)
    end

    def retranslateUi(search_window)
    search_window.windowTitle = Qt::Application.translate("Search_window", "MainWindow", nil, Qt::Application::UnicodeUTF8)
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
    @pushButton_2.text = Qt::Application.translate("Search_window", "\320\241\320\261\321\200\320\276\321\201\320\270\321\202\321\214", nil, Qt::Application::UnicodeUTF8)
    @ok_search_button.text = Qt::Application.translate("Search_window", "\320\237\321\200\320\270\320\274\320\265\320\275\320\270\321\202\321\214", nil, Qt::Application::UnicodeUTF8)
    @id_checkBox.text = Qt::Application.translate("Search_window", "\320\232\320\276\320\264", nil, Qt::Application::UnicodeUTF8)
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
    @tabWidget_2.setTabText(@tabWidget_2.indexOf(@tab), Qt::Application.translate("Search_window", "\320\236\321\201\320\275\320\276\320\262\320\275\320\276\320\265", nil, Qt::Application::UnicodeUTF8))
    @menu.title = Qt::Application.translate("Search_window", "\320\241\321\202\320\276\320\273\320\261\321\206\321\213", nil, Qt::Application::UnicodeUTF8)
    @menu_2.title = Qt::Application.translate("Search_window", "\320\237\320\260\321\206\320\270\320\265\320\275\321\202", nil, Qt::Application::UnicodeUTF8)
    @menu_3.title = Qt::Application.translate("Search_window", "\320\220\320\264\321\200\320\265\321\201", nil, Qt::Application::UnicodeUTF8)
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

