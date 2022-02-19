class Manager

  def initialize
    @trains = []
    @routes = []
    @stations = []
  end

  def menu
    loop do
      print 'Выберите вариант: '
      choice = gets.chomp
      case choice
      when '1'
        create_station
      when '2'
        create_train
      when '3'
        create_route
      when '4'
        control_route
      when '5'
        set_route
      when '6'
        add_carriage
      when '7'
        delete_carriage
      when '8'
        control_train
      when '9'
        show_stations
      when '10'
        show_station_trains
      when 'exit', '11'
        exit
      when 'help'
        help
      else
        puts 'Ошибка, используйте help для помощи'
      end
    end
  end

  def help
    puts '1. Создать станцию'
    puts '2. Создать поезд'
    puts '3. Создать маршрут'
    puts '4. Управление маршрутом'
    puts '5. Назначить маршрут поезду'
    puts '6. Добавить вагон к поезду'
    puts '7. Отцепить вагон у поезда'
    puts '8. Управление поезда по маршруту'
    puts '9. Все станции'
    puts '10. Все поезда на станции'
    puts '0. Выйти'
  end

  private
  def create_station
    print 'Введите название станции: '
    name = gets.chomp
    @stations << Station.new(name)
    puts "Станция #{name} успешно создана"
  end

  def create_train
    puts "Какой тип поезда Вы хотите создать? 'passenger' или 'cargo'?"
    type = gets.chomp
    print 'Введите номер поезда: '
    number = gets.chomp
    case type
    when 'passenger'
      @trains << PassengerTrain.new(number)
    when 'cargo'
      @trains << CargoTrain.new(number)
    end
    puts "Поезд c номером #{number} успешно создан"
  end

  def create_route
    @stations.each.with_index(1) do |station, index|
      puts "#{index}. #{station.name}"
    end
    print "Выберите начальную станцию: "
  end
end
