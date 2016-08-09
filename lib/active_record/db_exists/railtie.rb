require 'rails'

module ActiveRecord
  module DbExists
    class Railtie < Rails::Railtie
      rake_tasks do
        namespace :db do
          desc "Check if Rails' database exists"
          task :exists => :environment do
            exit (database_exists? ? 0 : 1)
          end
        end
      end

      def database_exists?
        ActiveRecord::Base.connection
      rescue ActiveRecord::NoDatabaseError
        false
      else
        true
      end
    end
  end
end
