# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
I18nPoetry::Application.initialize!

Time::DATE_FORMATS[:created_time] = "%A %B %d at %X"
