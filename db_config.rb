
require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'buntimes'
}

ActiveRecord::Base.establish_connection( ENV['DATABASE_URL'] || options)
