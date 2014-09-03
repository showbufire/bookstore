ActionMailer::Base.smtp_settings = {
  address: 'smtp.mandrillapp.com',
  port: 587,
  user_name: 'showbufire@gmail.com',
  password: 'rGjvjQ-O9Osbv4pqVRCMLg',
  authentication: 'login',
  enable_starttls_auto: true
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: 'utf-8'
