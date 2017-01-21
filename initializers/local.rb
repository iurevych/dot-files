Paperclip.options[:command_path] = "/usr/local/bin/identify"

# Disable .delay
if Rails.env.development?
  require 'sidekiq/testing'
  Sidekiq::Testing.inline!
  Rails.application.config.assets.debug = false
  Rails.application.config.action_controller.perform_caching = true
end
