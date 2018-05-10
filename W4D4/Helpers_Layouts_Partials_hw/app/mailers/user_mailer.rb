class UserMailer < ApplicationMailer
  default from: 'example@examplemail.com'

  def welcome_email(user)
    @user = user

    mail(to: @user.username, subject: "Welcome Email")

  end
end
