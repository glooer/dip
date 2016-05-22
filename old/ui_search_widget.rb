=begin
** Form generated from reading ui file 'search_widget.ui'
**
** Created: —б 7. май 22:06:10 2016
**      by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Search_widget
    attr_reader :gridLayout
    attr_reader :gridLayout_2
    attr_reader :tabWidget
    attr_reader :tab_3
    attr_reader :gridLayout_3
    attr_reader :id_layout
    attr_reader :id_checkBox
    attr_reader :id_selecter
    attr_reader :id_edit
    attr_reader :verticalSpacer
    attr_reader :lastName_layout
    attr_reader :lastName_check
    attr_reader :lastName_edit
    attr_reader :tab_4
    attr_reader :horizontalLayout_5
    attr_reader :pushButton_2
    attr_reader :horizontalSpacer
    attr_reader :pushButton_3
    attr_reader :tableWidget

    def setupUi(search_widget)
    if search_widget.objectName.nil?
        search_widget.objectName = "search_widget"
    end
    search_widget.resize(640, 577)
    @gridLayout = Qt::GridLayout.new(search_widget)
    @gridLayout.objectName = "gridLayout"
    @gridLayout_2 = Qt::GridLayout.new()
    @gridLayout_2.objectName = "gridLayout_2"
    @tabWidget = Qt::TabWidget.new(search_widget)
    @tabWidget.objectName = "tabWidget"
    @tab_3 = Qt::Widget.new()
    @tab_3.objectName = "tab_3"
    @gridLayout_3 = Qt::GridLayout.new(@tab_3)
    @gridLayout_3.objectName = "gridLayout_3"
    @id_layout = Qt::GridLayout.new()
    @id_layout.objectName = "id_layout"
    @id_checkBox = Qt::CheckBox.new(@tab_3)
    @id_checkBox.objectName = "id_checkBox"

    @id_layout.addWidget(@id_checkBox, 0, 0, 1, 1)

    @id_selecter = Qt::ComboBox.new(@tab_3)
    @id_selecter.objectName = "id_selecter"

    @id_layout.addWidget(@id_selecter, 0, 1, 1, 1)

    @id_edit = Qt::LineEdit.new(@tab_3)
    @id_edit.objectName = "id_edit"

    @id_layout.addWidget(@id_edit, 1, 0, 1, 2)


    @gridLayout_3.addLayout(@id_layout, 1, 0, 1, 1)

    @verticalSpacer = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @gridLayout_3.addItem(@verticalSpacer, 3, 0, 1, 1)

    @lastName_layout = Qt::VBoxLayout.new()
    @lastName_layout.objectName = "lastName_layout"
    @lastName_check = Qt::CheckBox.new(@tab_3)
    @lastName_check.objectName = "lastName_check"

    @lastName_layout.addWidget(@lastName_check)

    @lastName_edit = Qt::LineEdit.new(@tab_3)
    @lastName_edit.objectName = "lastName_edit"

    @lastName_layout.addWidget(@lastName_edit)


    @gridLayout_3.addLayout(@lastName_layout, 2, 0, 1, 1)

    @tabWidget.addTab(@tab_3, Qt::Application.translate("search_widget", "Tab 1", nil, Qt::Application::UnicodeUTF8))
    @tab_4 = Qt::Widget.new()
    @tab_4.objectName = "tab_4"
    @tabWidget.addTab(@tab_4, Qt::Application.translate("search_widget", "Tab 2", nil, Qt::Application::UnicodeUTF8))

    @gridLayout_2.addWidget(@tabWidget, 0, 2, 1, 1)

    @horizontalLayout_5 = Qt::HBoxLayout.new()
    @horizontalLayout_5.objectName = "horizontalLayout_5"
    @pushButton_2 = Qt::PushButton.new(search_widget)
    @pushButton_2.objectName = "pushButton_2"

    @horizontalLayout_5.addWidget(@pushButton_2)

    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout_5.addItem(@horizontalSpacer)

    @pushButton_3 = Qt::PushButton.new(search_widget)
    @pushButton_3.objectName = "pushButton_3"

    @horizontalLayout_5.addWidget(@pushButton_3)


    @gridLayout_2.addLayout(@horizontalLayout_5, 1, 2, 1, 1)

    @tableWidget = Qt::TableWidget.new(search_widget)
    @tableWidget.objectName = "tableWidget"

    @gridLayout_2.addWidget(@tableWidget, 0, 0, 2, 1)


    @gridLayout.addLayout(@gridLayout_2, 0, 0, 1, 1)


    retranslateUi(search_widget)

    @tabWidget.setCurrentIndex(0)


    Qt::MetaObject.connectSlotsByName(search_widget)
    end # setupUi

    def setup_ui(search_widget)
        setupUi(search_widget)
    end

    def retranslateUi(search_widget)
    search_widget.windowTitle = Qt::Application.translate("search_widget", "Form", nil, Qt::Application::UnicodeUTF8)
    @id_checkBox.text = Qt::Application.translate("search_widget", "\320\232\320\276\320\264", nil, Qt::Application::UnicodeUTF8)
    @id_selecter.insertItems(0, [Qt::Application.translate("search_widget", "1", nil, Qt::Application::UnicodeUTF8),
        Qt::Application.translate("search_widget", "2", nil, Qt::Application::UnicodeUTF8)])
    @lastName_check.text = Qt::Application.translate("search_widget", "\320\244\320\260\320\274\320\270\320\273\320\270\321\217", nil, Qt::Application::UnicodeUTF8)
    @tabWidget.setTabText(@tabWidget.indexOf(@tab_3), Qt::Application.translate("search_widget", "Tab 1", nil, Qt::Application::UnicodeUTF8))
    @tabWidget.setTabText(@tabWidget.indexOf(@tab_4), Qt::Application.translate("search_widget", "Tab 2", nil, Qt::Application::UnicodeUTF8))
    @pushButton_2.text = Qt::Application.translate("search_widget", "\320\241\320\261\321\200\320\276\321\201\320\270\321\202\321\214", nil, Qt::Application::UnicodeUTF8)
    @pushButton_3.text = Qt::Application.translate("search_widget", "\320\237\321\200\320\270\320\274\320\265\320\275\320\270\321\202\321\214", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(search_widget)
        retranslateUi(search_widget)
    end

end

module Ui
    class Search_widget < Ui_Search_widget
    end
end  # module Ui

