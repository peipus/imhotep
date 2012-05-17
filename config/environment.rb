# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Imhotep::Application.initialize!

ENV['GEM_HOME']="#{ENV['HOME']}/.gems"
ENV['GEM_PATH']="#{ENV['GEM_HOME']}:#{ENV['HOME']}/home/imhotepe/ruby/gems:/home/imhotepe/ruby/gems"
