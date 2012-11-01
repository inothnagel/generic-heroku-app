class AdminMailer < ActionMailer::Base
  default from: 'SET ADMIN EMAIL HERE'

  def new_registration_email(user)
    admin_email = 'SET ADMIN EMAIL HERE'

    @user = user
    mail(:to => admin_email, :subject => "New Registration: #{user.email}")
  end
end
