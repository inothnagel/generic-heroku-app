class User < ActiveRecord::Base
  after_create :send_registration_notification_to_admin

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  def send_registration_notification_to_admin
    AdminMailer.new_registration_email(self).deliver
  end
end
