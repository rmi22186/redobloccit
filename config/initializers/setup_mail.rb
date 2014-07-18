if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address    => 'smtp.sendgrid.net',
    :port       => '587',
    :authentication =>  :plain,
    :user_name  =>  "app27523232@heroku.com",
    :password   =>  "j1yg8utn",
    :domain     => 'heroku.com',
    :enable_starttls_auto => true
  }
end