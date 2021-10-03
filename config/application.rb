# -*- encoding : utf-8 -*-
require_relative 'boot'

require "rails"
# require "active_record/railtie"
require "active_model/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "active_resource/railtie"
require "rails/test_unit/railtie"
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Web
  class Application < Rails::Application
    config.load_defaults 5.0
    config.time_zone = 'Helsinki'
  end
end
