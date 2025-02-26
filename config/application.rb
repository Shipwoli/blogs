require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Stem
  class Application < Rails::Application
    config.load_defaults 7.0 # Adjust based on your Rails version

    # Enable the asset pipeline (REMOVE this if using Rails 7+)
    config.assets.enabled = true 
  end
end
