options = {
  adapter: 'postgresql'
  database: ''
}

ActiveRecord::Base.establish_connection( ENV['DATABASE_URL'] || options)
