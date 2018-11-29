require "boris_bike"

describe DockingStation do
  it "releases a bike from the docking station" do
    expect(subject).to respond_to :release_bike
  end

  it "docks a bike to the docking station" do
    expect(subject).to respond_to :dock_bike
  end

  it "gets working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "docks a bike" do
    bike = Bike.new
    expect (subject.dock_bike(bike)).equal? bike
  end

  it "checks if bike is in docking station" do
    bike = Bike.new
    expect (subject.check_bike).equal? bike
  end

end
