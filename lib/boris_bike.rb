class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise "There is no bike available"
    else
      @bikes
    end
  end

  def dock_bike(bike)
    raise "There is no space available" if @bikes
    @bikes = bike
  end

end

class Bike
  def working?
    true
  end
end
