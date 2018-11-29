class DockingStation

  attr_reader :bike

  def release_bike
    raise "There is no bike available" unless @bike
    @bike
  end

  def dock_bike(bike)
    raise "There is no space available" if @bike
    @bike = bike
  end

end

class Bike
  def working?
    true
  end
end
