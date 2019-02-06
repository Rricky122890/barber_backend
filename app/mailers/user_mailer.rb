class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.place_status.subject
  #
  def place_status

      @username = Appointment.all[1][:username]
      @found = User.find_by(username: @username)
      @greeting = "Hi #{@found.username}"
      mail to: @found.email
    
  end
end
