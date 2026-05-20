require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module JavaTutor
  class Application < Rails::Application
    config.load_defaults 8.1
    config.autoload_lib(ignore: %w[assets tasks])
    config.encoding = "utf-8"
    config.i18n.default_locale = :ja
    config.time_zone = "Tokyo"
  end
end
