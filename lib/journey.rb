require_relative 'oystercard'

class Journey
  PENALTY_FARE = 6

  def fare
    PENALTY_FARE
  end

  def entry_station(station)
    station
  end

  def exit_station(station)
    station
  end

  def complete?
    false
  end
end
