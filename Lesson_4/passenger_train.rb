class PassengerTrain < Train
  def type
    'пассажирский'
  end

  def add_carriages(carriages)
    if carriage.class == PassengerCarriage
      super
    end
  end
end
