class SendWelcomeEmailJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    # Do something later
    UserMailer.with(user_id: user_id).send_welcome_email.deliver_later
  end
end
