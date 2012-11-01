class AdminMailer < ActionMailer::Base
  default from: 'SET_FROM_EMAIL_HERE'

  def new_registration_email(user)
    admin_email = 'SET_ADMIN_EMAIL_HERE'

    @user = user
    mail(:to => admin_email, :subject => "New Registration: #{user.email}")
  end
end
