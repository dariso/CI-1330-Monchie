require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
Bundler.require :default, Rails.env #lo agregué

module MonchieApp
  class Application < Rails::Application
  
    config.autoload_paths += %W(#{config.root}/lib)
    config.assets.initialize_on_precompile=false
    
    
     config.secret_token = '6f22fa632e18b338b4babfa5fca632f5454fc97317cb52f372fa0f0fdd7f4d5bd95a060ff412c7230627b5c17906c9762c09208624bc1ab97f8d5344d8d4f467'
    config.filter_parameters << :password
    config.middleware.use "PDFKit::Middleware"
    #config.action_controller.asset_host = "http://localhost"
    #config.action_controller.asset_host = "http://localhost:3000/facturas/"
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end


