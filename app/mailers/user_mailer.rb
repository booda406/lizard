class UserMailer < ActionMailer::Base
  default from: "Custom@fontech.com.tw"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact.subject
  #
  def contact(contact)
    @contact = contact
    mail(to: "tough@fontech.com.tw", subject: '我有話要說')
  end

end
