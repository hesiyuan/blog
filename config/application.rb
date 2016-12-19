require_relative 'boot'

require 'rails/all'

require_relative '../lib/timer'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.middleware.insert_before(Rack::Sendfile, Timer)
    #config.middleware.use "Timer"
  end
end
