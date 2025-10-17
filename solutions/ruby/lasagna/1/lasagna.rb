class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    return EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    one_layer = 2
    return layers * one_layer
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    prep = preparation_time_in_minutes(number_of_layers)
    return actual_minutes_in_oven + prep
  end
end
