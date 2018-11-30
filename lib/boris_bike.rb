class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

private
  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end

public

  def release_bike
    if @bikes.empty?
      raise "There is no bike available"
    else
      @bikes
    end
  end

  def dock_bike(bike)
    fail "There is no space available" if full?
    @bikes << bike

  end

end

class Bike
  def working?
    true
  end
end
