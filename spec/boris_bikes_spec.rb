require "boris_bike"

describe DockingStation do
  it "releases a bike from the docking station" do
    expect(subject).to respond_to :release_bike
  end

  it "docks a bike to the docking station" do
    expect(subject).to respond_to :dock_bike
  end

  it "gets working bike" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it "docks a bike" do
    bike = Bike.new
    expect (subject.dock_bike(bike)).equal? bike
  end

  it "raise an error if no bike" do
    expect{subject.release_bike}.to raise_error "There is no bike available"
  end

  it "raise an error if docking station is full" do
    docking_station = subject
    DockingStation::DEFAULT_CAPACITY.times do
      subject.dock_bike Bike.new
    end
    expect{subject.dock_bike(Bike.new)}.to raise_error "There is no space available"
  end

  it "allows the user to dock 16 bikes" do
    bike = Bike.new
    docking_station = subject
    15.times { docking_station.dock_bike Bike.new }
    expect{subject.dock_bike(bike)}.equal? bike
  end

  it "checks if private method is private" do
    expect {subject.full?}.to raise_error(NoMethodError)
  end

  it "sets a capacity of 40 rather than the default of 20" do
    docking_station = DockingStation.new(40)
    40.times { docking_station.dock_bike Bike.new }
    expect{ docking_station.dock_bike Bike.new }.to raise_error "There is no space available"
  end

end
