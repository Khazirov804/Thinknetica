require_relative 'train'
require_relative 'cargo_carriage'
require_relative 'passenger_carriage'
require_relative 'cargo_train'
require_relative 'passenger_train'
require_relative 'route'
require_relative 'station'
require_relative 'manager'

manager = Manager.new
manager.help
manager.menu
