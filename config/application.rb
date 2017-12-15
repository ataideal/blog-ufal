require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BlogUfal
  class Application < Rails::Application

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    #I18n config
    config.i18n.default_locale = :"pt-BR"

    config.assets.precompile += %w(versa.css versa.js versa/*)
    config.assets.precompile += %w[*.png *.jpg *.jpeg *.gif]
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # Include Bower components in compiled assets
    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')   # -- all .rb files in that directory are automatically loaded.
  end
end
