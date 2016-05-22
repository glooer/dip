=begin
** Form generated from reading ui file 'search_window.ui'
**
** Created: Чт 12. май 03:36:52 2016
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
    attr_reader :centralwidget
    attr_reader :gridLayout
    attr_reader :gridLayout_2
    attr_reader :tabWidget
    attr_reader :tab_3
    attr_reader :gridLayout_3
    attr_reader :firstName_layout
    attr_reader :firstName_checkBox
    attr_reader :firstName_edit
    attr_reader :id_layout
    attr_reader :id_checkBox
    attr_reader :id_selecter
    attr_reader :id_edit
    attr_reader :lastName_layout
    attr_reader :lastName_checkBox
    attr_reader :lastName_edit
    attr_reader :sex_layout
    attr_reader :sex_checkBox
    attr_reader :sex_group_layout
    attr_reader :horizontalSpacer_2
    attr_reader :sex_male
    attr_reader :sex_female
    attr_reader :formLayout
    attr_reader :birthDate_checkBox
    attr_reader :birthDate_edit_start
    attr_reader :birthDate_edit_end
    attr_reader :birthDate_checkBox_end
    attr_reader :contact_layout
    attr_reader :contact_checkBox
    attr_reader :contact_edit
    attr_reader :patrName_layout
    attr_reader :patrName_checkBox
    attr_reader :patrName_edit
    attr_reader :snils_layout
    attr_reader :snils_checkBox
    attr_reader :snils_edit
    attr_reader :document_layout
    attr_reader :document_selecter
    attr_reader :document_checkBox
    attr_reader :document_serial
    attr_reader :document_number
    attr_reader :verticalSpacer
    attr_reader :address_Layout
    attr_reader :horizontalLayout
    attr_reader :address_type_reg
    attr_reader :address_type_stay
    attr_reader :address_checkBox
    attr_reader :horizontalSpacer_3
    attr_reader :tab_4
    attr_reader :horizontalLayout_5
    attr_reader :pushButton_2
    attr_reader :horizontalSpacer
    attr_reader :ok_search_button
    attr_reader :tableView
    attr_reader :menubar
    attr_reader :menu
    attr_reader :menu_2
    attr_reader :menu_3
    attr_reader :statusbar

    def setupUi(search_window)
    if search_window.objectName.nil?
        search_window.objectName = "search_window"
    end
    search_window.resize(641, 594)
    @menu_Client_lastName = Qt::Action.new(search_window)
    @menu_Client_lastName.objectName = "menu_Client_lastName"
    @menu_Client_lastName.checkable = true
    @menu_Client_lastName.checked = true
    @menu_Client_firstName = Qt::Action.new(search_window)
    @menu_Client_firstName.objectName = "menu_Client_firstName"
    @menu_Client_firstName.checkable = true
    @menu_Client_patrName = Qt::Action.new(search_window)
    @menu_Client_patrName.objectName = "menu_Client_patrName"
    @menu_Client_patrName.checkable = true
    @menu_Client_patrName.enabled = true
    @menu_Client_patrName.menuRole = Qt::Action::TextHeuristicRole
    @menu_Client_id = Qt::Action.new(search_window)
    @menu_Client_id.objectName = "menu_Client_id"
    @menu_Client_id.checkable = true
    @menu_Client_id.checked = true
    @menu_Client_id.iconVisibleInMenu = false
    @menu_Client_id.priority = Qt::Action::NormalPriority
    @menu_Client_birthDate = Qt::Action.new(search_window)
    @menu_Client_birthDate.objectName = "menu_Client_birthDate"
    @menu_Client_birthDate.checkable = true
    @menu_Client_sex = Qt::Action.new(search_window)
    @menu_Client_sex.objectName = "menu_Client_sex"
    @menu_Client_sex.checkable = true
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
    @centralwidget = Qt::Widget.new(search_window)
    @centralwidget.objectName = "centralwidget"
    @gridLayout = Qt::GridLayout.new(@centralwidget)
    @gridLayout.objectName = "gridLayout"
    @gridLayout_2 = Qt::GridLayout.new()
    @gridLayout_2.objectName = "gridLayout_2"
    @tabWidget = Qt::TabWidget.new(@centralwidget)
    @tabWidget.objectName = "tabWidget"
    @tab_3 = Qt::Widget.new()
    @tab_3.objectName = "tab_3"
    @gridLayout_3 = Qt::GridLayout.new(@tab_3)
    @gridLayout_3.objectName = "gridLayout_3"
    @firstName_layout = Qt::VBoxLayout.new()
    @firstName_layout.objectName = "firstName_layout"
    @firstName_checkBox = Qt::CheckBox.new(@tab_3)
    @firstName_checkBox.objectName = "firstName_checkBox"

    @firstName_layout.addWidget(@firstName_checkBox)

    @firstName_edit = Qt::LineEdit.new(@tab_3)
    @firstName_edit.objectName = "firstName_edit"
    @firstName_edit.enabled = false

    @firstName_layout.addWidget(@firstName_edit)


    @gridLayout_3.addLayout(@firstName_layout, 3, 0, 1, 1)

    @id_layout = Qt::GridLayout.new()
    @id_layout.objectName = "id_layout"
    @id_checkBox = Qt::CheckBox.new(@tab_3)
    @id_checkBox.objectName = "id_checkBox"

    @id_layout.addWidget(@id_checkBox, 0, 0, 1, 1)

    @id_selecter = Qt::ComboBox.new(@tab_3)
    @id_selecter.objectName = "id_selecter"
    @id_selecter.enabled = false
    @id_selecter.styleSheet = ".QComboBox:disabled {\n" \
"\n" \
"}"
    @id_selecter.editable = false
    @id_selecter.sizeAdjustPolicy = Qt::ComboBox::AdjustToMinimumContentsLength
    @id_selecter.duplicatesEnabled = false

    @id_layout.addWidget(@id_selecter, 0, 1, 1, 1)

    @id_edit = Qt::LineEdit.new(@tab_3)
    @id_edit.objectName = "id_edit"
    @id_edit.enabled = false

    @id_layout.addWidget(@id_edit, 1, 0, 1, 2)


    @gridLayout_3.addLayout(@id_layout, 1, 0, 1, 1)

    @lastName_layout = Qt::VBoxLayout.new()
    @lastName_layout.objectName = "lastName_layout"
    @lastName_checkBox = Qt::CheckBox.new(@tab_3)
    @lastName_checkBox.objectName = "lastName_checkBox"

    @lastName_layout.addWidget(@lastName_checkBox)

    @lastName_edit = Qt::LineEdit.new(@tab_3)
    @lastName_edit.objectName = "lastName_edit"
    @lastName_edit.enabled = false

    @lastName_layout.addWidget(@lastName_edit)


    @gridLayout_3.addLayout(@lastName_layout, 2, 0, 1, 1)

    @sex_layout = Qt::HBoxLayout.new()
    @sex_layout.objectName = "sex_layout"
    @sex_checkBox = Qt::CheckBox.new(@tab_3)
    @sex_checkBox.objectName = "sex_checkBox"

    @sex_layout.addWidget(@sex_checkBox)

    @sex_group_layout = Qt::HBoxLayout.new()
    @sex_group_layout.objectName = "sex_group_layout"
    @horizontalSpacer_2 = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @sex_group_layout.addItem(@horizontalSpacer_2)

    @sex_male = Qt::RadioButton.new(@tab_3)
    @sex_male.objectName = "sex_male"
    @sex_male.enabled = false
    @sex_male.checked = true

    @sex_group_layout.addWidget(@sex_male)

    @sex_female = Qt::RadioButton.new(@tab_3)
    @sex_female.objectName = "sex_female"
    @sex_female.enabled = false

    @sex_group_layout.addWidget(@sex_female)


    @sex_layout.addLayout(@sex_group_layout)


    @gridLayout_3.addLayout(@sex_layout, 6, 0, 1, 1)

    @formLayout = Qt::FormLayout.new()
    @formLayout.objectName = "formLayout"
    @birthDate_checkBox = Qt::CheckBox.new(@tab_3)
    @birthDate_checkBox.objectName = "birthDate_checkBox"

    @formLayout.setWidget(0, Qt::FormLayout::LabelRole, @birthDate_checkBox)

    @birthDate_edit_start = Qt::DateEdit.new(@tab_3)
    @birthDate_edit_start.objectName = "birthDate_edit_start"
    @birthDate_edit_start.enabled = false
    @birthDate_edit_start.dateTime = Qt::DateTime.new(Qt::Date.new(2000, 1, 1), Qt::Time.new(0, 0, 0))
    @birthDate_edit_start.calendarPopup = true

    @formLayout.setWidget(0, Qt::FormLayout::FieldRole, @birthDate_edit_start)

    @birthDate_edit_end = Qt::DateEdit.new(@tab_3)
    @birthDate_edit_end.objectName = "birthDate_edit_end"
    @birthDate_edit_end.enabled = false
    @birthDate_edit_end.calendarPopup = true

    @formLayout.setWidget(1, Qt::FormLayout::FieldRole, @birthDate_edit_end)

    @birthDate_checkBox_end = Qt::CheckBox.new(@tab_3)
    @birthDate_checkBox_end.objectName = "birthDate_checkBox_end"
    @birthDate_checkBox_end.enabled = false

    @formLayout.setWidget(1, Qt::FormLayout::LabelRole, @birthDate_checkBox_end)


    @gridLayout_3.addLayout(@formLayout, 5, 0, 1, 1)

    @contact_layout = Qt::HBoxLayout.new()
    @contact_layout.objectName = "contact_layout"
    @contact_checkBox = Qt::CheckBox.new(@tab_3)
    @contact_checkBox.objectName = "contact_checkBox"

    @contact_layout.addWidget(@contact_checkBox)

    @contact_edit = Qt::LineEdit.new(@tab_3)
    @contact_edit.objectName = "contact_edit"
    @contact_edit.enabled = false

    @contact_layout.addWidget(@contact_edit)


    @gridLayout_3.addLayout(@contact_layout, 7, 0, 1, 1)

    @patrName_layout = Qt::VBoxLayout.new()
    @patrName_layout.objectName = "patrName_layout"
    @patrName_checkBox = Qt::CheckBox.new(@tab_3)
    @patrName_checkBox.objectName = "patrName_checkBox"

    @patrName_layout.addWidget(@patrName_checkBox)

    @patrName_edit = Qt::LineEdit.new(@tab_3)
    @patrName_edit.objectName = "patrName_edit"
    @patrName_edit.enabled = false

    @patrName_layout.addWidget(@patrName_edit)


    @gridLayout_3.addLayout(@patrName_layout, 4, 0, 1, 1)

    @snils_layout = Qt::HBoxLayout.new()
    @snils_layout.objectName = "snils_layout"
    @snils_checkBox = Qt::CheckBox.new(@tab_3)
    @snils_checkBox.objectName = "snils_checkBox"

    @snils_layout.addWidget(@snils_checkBox)

    @snils_edit = Qt::LineEdit.new(@tab_3)
    @snils_edit.objectName = "snils_edit"
    @snils_edit.enabled = false

    @snils_layout.addWidget(@snils_edit)


    @gridLayout_3.addLayout(@snils_layout, 8, 0, 1, 1)

    @document_layout = Qt::GridLayout.new()
    @document_layout.objectName = "document_layout"
    @document_selecter = Qt::ComboBox.new(@tab_3)
    @document_selecter.objectName = "document_selecter"
    @document_selecter.enabled = false

    @document_layout.addWidget(@document_selecter, 0, 1, 1, 1)

    @document_checkBox = Qt::CheckBox.new(@tab_3)
    @document_checkBox.objectName = "document_checkBox"

    @document_layout.addWidget(@document_checkBox, 0, 0, 1, 1)

    @document_serial = Qt::LineEdit.new(@tab_3)
    @document_serial.objectName = "document_serial"
    @document_serial.enabled = false

    @document_layout.addWidget(@document_serial, 1, 0, 1, 1)

    @document_number = Qt::LineEdit.new(@tab_3)
    @document_number.objectName = "document_number"
    @document_number.enabled = false

    @document_layout.addWidget(@document_number, 1, 1, 1, 1)


    @gridLayout_3.addLayout(@document_layout, 9, 0, 1, 1)

    @verticalSpacer = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @gridLayout_3.addItem(@verticalSpacer, 11, 0, 1, 1)

    @address_Layout = Qt::GridLayout.new()
    @address_Layout.objectName = "address_Layout"
    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @address_type_reg = Qt::RadioButton.new(@tab_3)
    @address_type_reg.objectName = "address_type_reg"
    @address_type_reg.enabled = false
    @address_type_reg.checked = true

    @horizontalLayout.addWidget(@address_type_reg)

    @address_type_stay = Qt::RadioButton.new(@tab_3)
    @address_type_stay.objectName = "address_type_stay"
    @address_type_stay.enabled = false

    @horizontalLayout.addWidget(@address_type_stay)


    @address_Layout.addLayout(@horizontalLayout, 0, 2, 1, 1)

    @address_checkBox = Qt::CheckBox.new(@tab_3)
    @address_checkBox.objectName = "address_checkBox"

    @address_Layout.addWidget(@address_checkBox, 0, 0, 1, 1)

    @horizontalSpacer_3 = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @address_Layout.addItem(@horizontalSpacer_3, 0, 1, 1, 1)


    @gridLayout_3.addLayout(@address_Layout, 10, 0, 1, 1)

    @tabWidget.addTab(@tab_3, Qt::Application.translate("Search_window", "Tab 1", nil, Qt::Application::UnicodeUTF8))
    @tab_4 = Qt::Widget.new()
    @tab_4.objectName = "tab_4"
    @tabWidget.addTab(@tab_4, Qt::Application.translate("Search_window", "Tab 2", nil, Qt::Application::UnicodeUTF8))

    @gridLayout_2.addWidget(@tabWidget, 0, 1, 1, 1)

    @horizontalLayout_5 = Qt::HBoxLayout.new()
    @horizontalLayout_5.objectName = "horizontalLayout_5"
    @pushButton_2 = Qt::PushButton.new(@centralwidget)
    @pushButton_2.objectName = "pushButton_2"

    @horizontalLayout_5.addWidget(@pushButton_2)

    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout_5.addItem(@horizontalSpacer)

    @ok_search_button = Qt::PushButton.new(@centralwidget)
    @ok_search_button.objectName = "ok_search_button"

    @horizontalLayout_5.addWidget(@ok_search_button)


    @gridLayout_2.addLayout(@horizontalLayout_5, 1, 1, 1, 1)


    @gridLayout.addLayout(@gridLayout_2, 0, 1, 1, 1)

    @tableView = Qt::TableView.new(@centralwidget)
    @tableView.objectName = "tableView"
    @tableView.alternatingRowColors = true

    @gridLayout.addWidget(@tableView, 0, 0, 1, 1)

    search_window.centralWidget = @centralwidget
    @menubar = Qt::MenuBar.new(search_window)
    @menubar.objectName = "menubar"
    @menubar.geometry = Qt::Rect.new(0, 0, 641, 21)
    @menu = Qt::Menu.new(@menubar)
    @menu.objectName = "menu"
    @menu_2 = Qt::Menu.new(@menu)
    @menu_2.objectName = "menu_2"
    @menu_3 = Qt::Menu.new(@menu)
    @menu_3.objectName = "menu_3"
    search_window.setMenuBar(@menubar)
    @statusbar = Qt::StatusBar.new(search_window)
    @statusbar.objectName = "statusbar"
    @statusbar.enabled = true
    search_window.statusBar = @statusbar

    @menubar.addAction(@menu.menuAction())
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

    retranslateUi(search_window)
    Qt::Object.connect(@lastName_checkBox, SIGNAL('clicked(bool)'), @lastName_edit, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@firstName_checkBox, SIGNAL('clicked(bool)'), @firstName_edit, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@patrName_checkBox, SIGNAL('clicked(bool)'), @patrName_edit, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@sex_checkBox, SIGNAL('clicked(bool)'), @sex_male, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@sex_checkBox, SIGNAL('clicked(bool)'), @sex_female, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@contact_checkBox, SIGNAL('clicked(bool)'), @contact_edit, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@snils_checkBox, SIGNAL('clicked(bool)'), @snils_edit, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@birthDate_checkBox_end, SIGNAL('clicked(bool)'), @birthDate_edit_end, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@document_checkBox, SIGNAL('clicked(bool)'), @document_serial, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@document_checkBox, SIGNAL('clicked(bool)'), @document_number, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@document_checkBox, SIGNAL('clicked(bool)'), @document_selecter, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_type_reg, SLOT('setEnabled(bool)'))
    Qt::Object.connect(@address_checkBox, SIGNAL('clicked(bool)'), @address_type_stay, SLOT('setEnabled(bool)'))

    @tabWidget.setCurrentIndex(0)


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
    @firstName_checkBox.text = Qt::Application.translate("Search_window", "\320\230\320\274\321\217", nil, Qt::Application::UnicodeUTF8)
    @id_checkBox.text = Qt::Application.translate("Search_window", "\320\232\320\276\320\264", nil, Qt::Application::UnicodeUTF8)
    @lastName_checkBox.text = Qt::Application.translate("Search_window", "\320\244\320\260\320\274\320\270\320\273\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @sex_checkBox.text = Qt::Application.translate("Search_window", "\320\237\320\276\320\273", nil, Qt::Application::UnicodeUTF8)
    @sex_male.text = Qt::Application.translate("Search_window", "\320\234", nil, Qt::Application::UnicodeUTF8)
    @sex_female.text = Qt::Application.translate("Search_window", "\320\226", nil, Qt::Application::UnicodeUTF8)
    @birthDate_checkBox.text = Qt::Application.translate("Search_window", "\320\224\320\260\321\202\320\260 \321\200\320\276\320\266\320\264\320\265\320\275\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @birthDate_checkBox_end.text = Qt::Application.translate("Search_window", "\320\277\320\276", nil, Qt::Application::UnicodeUTF8)
    @contact_checkBox.text = Qt::Application.translate("Search_window", "\320\232\320\276\320\275\321\202\320\260\320\272\321\202", nil, Qt::Application::UnicodeUTF8)
    @patrName_checkBox.text = Qt::Application.translate("Search_window", "\320\236\321\202\321\207\320\265\321\201\321\202\320\262\320\276", nil, Qt::Application::UnicodeUTF8)
    @snils_checkBox.text = Qt::Application.translate("Search_window", "\320\241\320\235\320\230\320\233\320\241", nil, Qt::Application::UnicodeUTF8)
    @document_checkBox.text = Qt::Application.translate("Search_window", "\320\224\320\276\320\272\321\203\320\274\320\265\320\275\321\202", nil, Qt::Application::UnicodeUTF8)
    @address_type_reg.text = Qt::Application.translate("Search_window", "\320\240\320\265\320\263\320\270\321\201\321\202\321\200\320\260\321\206\320\270\320\270", nil, Qt::Application::UnicodeUTF8)
    @address_type_stay.text = Qt::Application.translate("Search_window", "\320\237\321\200\320\276\320\266\320\270\320\262\320\260\320\275\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @address_checkBox.text = Qt::Application.translate("Search_window", "\320\220\320\264\321\200\320\265\321\201", nil, Qt::Application::UnicodeUTF8)
    @tabWidget.setTabText(@tabWidget.indexOf(@tab_3), Qt::Application.translate("Search_window", "Tab 1", nil, Qt::Application::UnicodeUTF8))
    @tabWidget.setTabText(@tabWidget.indexOf(@tab_4), Qt::Application.translate("Search_window", "Tab 2", nil, Qt::Application::UnicodeUTF8))
    @pushButton_2.text = Qt::Application.translate("Search_window", "\320\241\320\261\321\200\320\276\321\201\320\270\321\202\321\214", nil, Qt::Application::UnicodeUTF8)
    @ok_search_button.text = Qt::Application.translate("Search_window", "\320\237\321\200\320\270\320\274\320\265\320\275\320\270\321\202\321\214", nil, Qt::Application::UnicodeUTF8)
    @menu.title = Qt::Application.translate("Search_window", "\320\241\321\202\320\276\320\273\320\261\321\206\321\213", nil, Qt::Application::UnicodeUTF8)
    @menu_2.title = Qt::Application.translate("Search_window", "\320\237\320\260\321\206\320\270\320\265\320\275\321\202", nil, Qt::Application::UnicodeUTF8)
    @menu_3.title = Qt::Application.translate("Search_window", "\320\220\320\264\321\200\320\265\321\201", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(search_window)
        retranslateUi(search_window)
    end

end

module Ui
    class Search_window < Ui_Search_window
    end
end  # module Ui

