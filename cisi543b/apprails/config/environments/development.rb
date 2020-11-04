Rails.application.configure do
  config.active_storage.service = :local
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=172800'
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker


# not used yet. 2020-11-01_Sun_20.18-PM.  
  # https://stackoverflow.com/questions/53346015/linking-devise-to-mailjet
  # config.action_mailer.delivery_method = :mailjet
  
  config.action_mailer.delivery_method = :smtp



  # SMTP settings for
  #10.5.1.210  # MESG01.stackpole.ca
  # works..
  
  # config.action_mailer.smtp_settings = {
  #  :address           => "mesg01.stackpole.ca"
  # }

  # for post-fix-relay, the following was needed to avoid a starttls error in the postfix-relay docker log.
  # https://github.com/dgleba/472dkrcollection/tree/master/mail/postfix-relay
  # moved to https://github.com/dgleba/482dkrcollection/tree/master/post-fix-relay-544-yard
  # works with hotmail in postfixrelay. David1212@gmail.com got blocked shortly after using it from droplet.
  #
  # config.action_mailer.smtp_settings = {
  #  :address           => "165.227.44.159",
  #  :port                 => 25,
  #  :authentication       => "plain",
  #  :enable_starttls_auto => false
  # }
 
  # gmail worked, 2016-07-21_Thu_14.44-PM.
  # or try smtp-mail.outlook.com
  
  # config.action_mailer.smtp_settings = {
  #  :address              => "smtp.gmail.com",
  #  :port                 => 587,
  #  :user_name            => ENV['gmail_username2'],
  #  :password             => ENV['gmail_password2'],
  #  :authentication       => "plain",
  #  :enable_starttls_auto => true
  # } 
  
  
  config.action_mailer.smtp_settings = {
   :address              => "in-v3.mailjet.com",
   :port                 => 587,
   :user_name            => ENV['mailjet_username'],
   :password             => ENV['mailjet_password'],
   :authentication       => "plain",
   :enable_starttls_auto => true
  } 
  
  
  #for devise.. 2016-07-22_Fri_14.52-PM David Gleba
  # config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }  
  # config.action_mailer.default_url_options = { host: 'https://cisi2.dg.ab3w.com' }  
  config.action_mailer.default_url_options = { host: 'https://ci.powderforward.com/' }  

end
