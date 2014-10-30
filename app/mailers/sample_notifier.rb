class SampleNotifier < ActionMailer::Base
  default from: "test@kainashi.herokuapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  1 <%= Rouge::Themes::Github.render(:scope => '.highlight') %>
  #   en.sample_notifier.sample_mail.subject
  #
  def sample_mail
    @greeting = "Hi"

    mail to: "shoya.ono.meiji@gmail.com", subject: "test mail"
  end
end