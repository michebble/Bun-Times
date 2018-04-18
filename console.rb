require'pry'
require'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)

require_relative'db_config'
require_relative'models/shop'
require_relative'models/user'
require_relative'models/burger'

binding.pry

puts 'ready to debug'