class SampleNotifier < ActionMailer::Base
  default from: "test@kainashi.herokuapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #

  def sample_mail
    @greeting = "Hi"

    mail to: "shoya.ono.meiji@gmail.com", subject: "test mail"
  end
end