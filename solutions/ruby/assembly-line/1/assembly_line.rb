class AssemblyLine
  MIN_CARS_PRODUCED_BY_HOUR = 221
  
  def initialize(speed)
    @speed = speed
  end

  def success_rate
    if @speed >= 1 && @speed <= 4
      1.0
    elsif @speed >= 5 && @speed <= 8
      0.9
    elsif @speed == 9
      0.8
    elsif @speed == 10
      0.77
    end
  end

  def production_rate_per_hour
    (MIN_CARS_PRODUCED_BY_HOUR * @speed * success_rate).to_f
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
