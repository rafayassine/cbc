require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cbc
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = [:en, :fr, :'zh-CN']
    config.i18n.default_locale = :'zh-CN'
    # config.i18n.fallbacks = true
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.delivery_method = :smtp

    config.action_mailer.smtp_settings = {
          :address              => "smtp.mailgun.org",
          :port                 => 587,
          :domain               => "app887bdf169f2245f68b156c404b137d00.mailgun.org",
          :user_name            => "postmaster@app887bdf169f2245f68b156c404b137d00.mailgun.org",
          :password             => "238fe7172876949c30b57317cc112f03",
          :authentication       => :plain,
          :enable_starttls_auto => true
    }
    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
