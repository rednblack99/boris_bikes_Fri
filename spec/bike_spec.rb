require "boris_bike"
describe Bike do
  it "check if the bike is working" do
      expect(subject).to respond_to :working?
    end

  it "accepts broken bike" do
    broken_bike = Bike.new("broken")
    expect(broken_bike.working?).to eq false
  end

end
