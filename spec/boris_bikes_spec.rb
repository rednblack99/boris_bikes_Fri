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

end
