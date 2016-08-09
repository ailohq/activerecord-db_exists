module ActiveRecord
  module DbExists
    VERSION = "0.1.0"
    puts "Rails not currently defined" unless defined?(Rails)
    require "active_record/db_exists/railtie" # if defined?(Rails) # Gem ordering?
  end
end
