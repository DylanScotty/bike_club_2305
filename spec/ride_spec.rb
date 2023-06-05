require 'rspec'
require './lib/ride'

RSpec describe Ride do
    
    it "exsist" do
        ride = Ride.new
        expect(ride).to be_an_instance_of(Ride)
    end

end