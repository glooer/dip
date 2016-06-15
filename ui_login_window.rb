=begin
** Form generated from reading ui file 'login_window.ui'
**
** Created: Ñð 15. èþí 20:01:20 2016
**      by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

class Ui_Login_dialog
    attr_reader :verticalLayout
    attr_reader :user_login_label
    attr_reader :user_login_edit
    attr_reader :user_password_label
    attr_reader :user_password_edit
    attr_reader :verticalSpacer
    attr_reader :horizontalLayout
    attr_reader :horizontalSpacer
    attr_reader :buttonBox

    def setupUi(login_dialog)
    if login_dialog.objectName.nil?
        login_dialog.objectName = "login_dialog"
    end
    login_dialog.windowModality = Qt::ApplicationModal
    login_dialog.resize(243, 139)
    login_dialog.modal = false
    @verticalLayout = Qt::VBoxLayout.new(login_dialog)
    @verticalLayout.objectName = "verticalLayout"
    @user_login_label = Qt::Label.new(login_dialog)
    @user_login_label.objectName = "user_login_label"

    @verticalLayout.addWidget(@user_login_label)

    @user_login_edit = Qt::LineEdit.new(login_dialog)
    @user_login_edit.objectName = "user_login_edit"

    @verticalLayout.addWidget(@user_login_edit)

    @user_password_label = Qt::Label.new(login_dialog)
    @user_password_label.objectName = "user_password_label"

    @verticalLayout.addWidget(@user_password_label)

    @user_password_edit = Qt::LineEdit.new(login_dialog)
    @user_password_edit.objectName = "user_password_edit"
    @user_password_edit.echoMode = Qt::LineEdit::Password

    @verticalLayout.addWidget(@user_password_edit)

    @verticalSpacer = Qt::SpacerItem.new(20, 40, Qt::SizePolicy::Minimum, Qt::SizePolicy::Expanding)

    @verticalLayout.addItem(@verticalSpacer)

    @horizontalLayout = Qt::HBoxLayout.new()
    @horizontalLayout.objectName = "horizontalLayout"
    @horizontalSpacer = Qt::SpacerItem.new(40, 20, Qt::SizePolicy::Expanding, Qt::SizePolicy::Minimum)

    @horizontalLayout.addItem(@horizontalSpacer)

    @buttonBox = Qt::DialogButtonBox.new(login_dialog)
    @buttonBox.objectName = "buttonBox"
    @buttonBox.orientation = Qt::Horizontal
    @buttonBox.standardButtons = Qt::DialogButtonBox::Close|Qt::DialogButtonBox::Ok
    @buttonBox.centerButtons = false

    @horizontalLayout.addWidget(@buttonBox)


    @verticalLayout.addLayout(@horizontalLayout)

    @user_login_label.buddy = @user_login_edit
    @user_password_label.buddy = @user_password_edit

    retranslateUi(login_dialog)

    Qt::MetaObject.connectSlotsByName(login_dialog)
    end # setupUi

    def setup_ui(login_dialog)
        setupUi(login_dialog)
    end

    def retranslateUi(login_dialog)
    login_dialog.windowTitle = Qt::Application.translate("Login_dialog", "\320\222\321\205\320\276\320\264", nil, Qt::Application::UnicodeUTF8)
    @user_login_label.text = Qt::Application.translate("Login_dialog", "\320\230\320\274\321\217", nil, Qt::Application::UnicodeUTF8)
    @user_password_label.text = Qt::Application.translate("Login_dialog", "\320\237\320\260\321\200\320\276\320\273\321\214", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(login_dialog)
        retranslateUi(login_dialog)
    end

end

module Ui
    class Login_dialog < Ui_Login_dialog
    end
end  # module Ui

