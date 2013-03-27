# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
CfwnApp::Application.initialize!

# SendGrid
ActionMailer::Base.smtp_settings = {
  :user_name => "app9159834@heroku.com",
  :password => "rdbv5bsw",
  :domain => "yourdomain.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
