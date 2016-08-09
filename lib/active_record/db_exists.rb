module ActiveRecord
  module DbExists
    VERSION = "0.1.0"
    require "active_record/db_exists/railtie" if defined?(Rails) 
  end
end
