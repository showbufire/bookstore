class AdminMailer < ActionMailer::Base
  default from: "showbufire@gmail.com"
  default to: "showbufire@gmail.com"

  def new_user(user)
    @user = user
    mail(subject: "New user #{user.email}")
  end
end
