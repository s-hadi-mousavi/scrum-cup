Samecup::Application.configure do
  config.cache_classes = false

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = true
  config.active_support.deprecation = :log
  
  # Specifies the header that your server uses for sending files
  config.action_dispatch.x_sendfile_header = "X-Sendfile"

  config.log_level = :debug
  config.action_mailer.perform_deliveries = false
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default :charset => "utf-8"
  config.action_mailer.default_url_options = { :host => 'localhost:3002' }
  config.action_mailer.delivery_method = :smtp
 config.action_mailer.smtp_settings = {   
    :openssl_verify_mode => OpenSSL::SSL::VERIFY_NONE,      
    :ssl => true,
    :enable_starttls_auto => true,  #this is the important stuff!
    :address        => 'smtp.gmail.com',
    :port           => 465,
#    :domain         => 'xxxxxx',
    :authentication => :plain,
    :user_name      => 'nanofoamco@gmail.com',
    :password       => 'nanofoam123'
  }



end
