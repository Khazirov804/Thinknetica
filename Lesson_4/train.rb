class Train
  attr_reader :carriages, :station, :number, :type, :speed, :route, :current_station
  def initialize(number)
    @number = number
    @carriages = []
    @speed = 0
  end

  def set_route(route)
    @route = route
    @current_station = route.stations.first
    current_station.add_train(self)
  end

  def speed_up(velocity) #набирает скорость
    @speed += velocity
  end

  def slow_down #сбрасывает скорость
    @speed = 0
  end

  def add_carriages
    @carriages += 1 if @speed == 0
  end

  def delete_carriages
    @carriages.delete_at(0)
  end

  def forward
    if next_station
      current_station.delete_train(self)
      @current_station = next_station
      current_station.add_train(self)
    end
  end

  def backward
    if prev_station
      current_station.delete_train(self)
      @current_station = prev_station
      current_station.add_train(self)
    end
  end

  protected

  def current_station_index
    @route.stations.index(@current_station)
  end

  def next_station
    @route.stations[current_station_index + 1]
  end

  def prev_station
    return if current_station_index.zero?
    @route.stations[current_station_index - 1]
  end
end
