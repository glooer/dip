class Login_window < Qt::Dialog
  slots "buttonClicked(QAbstractButton*)"

  def initialize *arg
    super
    @ui = Ui_Login_dialog.new
    @ui.setupUi(self)
    
    connect(@ui.buttonBox, SIGNAL("clicked(QAbstractButton*)"), SLOT("buttonClicked(QAbstractButton*)"))
    
    settings = AppSettings.new(Qt::Settings::IniFormat, Qt::Settings::UserScope, "samson-vista", "S11App")
    
    
    @ui.user_login_edit.setText(settings.value("db/appUserName").toString.force_encoding("UTF-8"))
    settings.dispose
    
    @ui.user_password_edit.setFocus
    
  end
  
  def buttonClicked x
    case @ui.buttonBox::standardButton x
      when Qt::DialogButtonBox::Ok
        r
      when Qt::DialogButtonBox::Close
        reject
    end
  end
  
  def r 
    login = @ui.user_login_edit.textf
    password = @ui.user_password_edit.textf
    if login.empty?
      mb = Qt::MessageBox.new self do
        self.text = "Логин не может быть пустым."
        self.icon = Qt::MessageBox::Information
        self.setWindowTitle("Ошибка")
      end
      mb.exec
      mb.dispose
      return
    end
    
    if S11::Person.select(:id).where(Person: {login: login, password: password.md5}).take(1).any?
      accept
    else
      mb = Qt::MessageBox.new self do
        self.text = "Неверное имя пользователя или пароль."
        self.icon = Qt::MessageBox::Critical
        self.setWindowTitle("Ошибка")
      end
      mb.exec
      mb.dispose
    end
  end
end