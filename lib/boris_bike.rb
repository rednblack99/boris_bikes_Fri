class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

private
  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end

public

  def release_bike
    if @bikes.empty?
      raise "There is no bike available"

    else
      if @bikes.working? == false
        raise "Bike broken"
      else
        @bikes
      end
    end
  end

  def dock_bike(bike)
    fail "There is no space available" if full?
    @bikes << bike

  end

end

class Bike

  def initialize(bike_status = 'working')
    @bike_status = bike_status
  end

  def working?
    if @bike_status == 'working'
      return true
    else
      false
    end
  end
end
