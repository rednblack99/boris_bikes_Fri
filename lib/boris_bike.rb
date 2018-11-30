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
    if @bikes.length >= 20
    raise "There is no space available" 
    else
    @bikes << bike
    end
  end

end

class Bike
  def working?
    true
  end
end
