# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Imhotep::Application.initialize!

ENV['GEM_PATH'] = "#{ENV['HOME']}/home/imhotepe/ruby/gems:#{ENV['GEM_PATH']}"
Gem.clear_paths


