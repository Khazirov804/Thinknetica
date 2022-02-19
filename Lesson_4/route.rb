=begin

rescue StandardError => e

end
class Route
  attr_reader :stations

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    @stations.delete(station)
  end
end
=end


class Route
  attr_reader :name, :stations

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
    @name = "#{first_station.name}-#{last_station.name}"
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    @stations.delete(station)
  end

  def show_stations
    @stations.each.with_index(1) do |station, x|
      puts "#{x}. #{station.name}"
    end
  end
end
