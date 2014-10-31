# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Action Mailer Setting
ActionMailer::Base.smtp_settings = {
  :user_name => "noren.member",
  :password => "hotokenonoren3",
  :domain => "kainashi.herokuapp.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
ActionMailer::Base.delivery_method = :smtp

