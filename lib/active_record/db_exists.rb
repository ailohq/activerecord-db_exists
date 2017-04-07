module ActiveRecord
  module DbExists
    VERSION = "0.1.1"
    require "active_record/db_exists/railtie" if defined?(Rails) 
  end
end
