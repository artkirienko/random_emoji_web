require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module RandomEmojiWeb
  class Application < Rails::Application
  end
end
