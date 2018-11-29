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

end
