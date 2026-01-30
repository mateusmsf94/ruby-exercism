class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  CARS_PER_HOUR = 221

  def success_rate(speed)
    case speed
      when 1..4 then 1
      when 5..8 then 0.9
      when 9 then 0.8
      when 10 then 0.77
    end
  end

  def production_rate_per_hour
    CARS_PER_HOUR * @speed * success_rate(@speed)
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
