class DeveloperMailer < ApplicationMailer
  helper :messages

  def flagged
    @notification = params[:record]
    recipient = params[:recipient]

    @developer = @notification.to_notification.developer

    mail(to: recipient.email, subject: "Your profile on railsdevs was flagged")
  end
end
