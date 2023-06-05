require 'rspec'
require './lib/ride'
require './lib/biker'
require './lib/bike_club'

RSpec.describe BikeClub do

    it "exists" do
        bike_club = BikeClub.new('The Gang')
        expect(bike_club).to be_an_instance_of(BikeClub)
    end

    it "adds a new Biker to the club" do
        bike_club = BikeClub.new('The Gang')
        biker = Biker.new('Dylan', 30)
        bike_club.add_biker(biker)
        expect(bike_club.bikers).to include(biker)
    end

    it "#most_rides" do
        bike_club = BikeClub.new('The Gang')
        biker1 = Biker.new('Dylan', 30)
        biker2 = Biker.new('Ben', 25)
        biker3 = Biker.new('Kelly', 35)

        bike_club.add_biker(biker1)
        bike_club.add_biker(biker2)
        bike_club.add_biker(biker3)

        ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
        ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})

        biker1.log_ride(ride1, 60)
        biker1.log_ride(ride2, 75)
        biker2.log_ride(ride1, 70)
        biker3.log_ride(ride2, 80)

        expect(bike_club.most_rides).to eq(biker1)
    end
end

# Ran out of time to complete best time for a givin ride and if a biker is eligible for a givin ride
# My plan would have been to add additional methods to the bike_club for each. 
# In my head it plan for something similar using .each to outline acceptable behaviour 
