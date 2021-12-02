class UserMailer < ApplicationMailer

  def send_welcome_email
    @user = User.find(params[:user_id])
    mail(
      to: @user.email,
      subject: 'This is a welcome email.'
      )
  end
end
