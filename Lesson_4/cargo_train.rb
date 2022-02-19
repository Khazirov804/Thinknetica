class CargoTrain < Train
  def type
    'грузовой'
  end

  def add_carriage(carriage)
    if carriage.class == CargoCarriage
      super
    end
  end
end
