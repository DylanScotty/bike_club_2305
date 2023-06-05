require './lib/ride'
require './lib/biker'

class BikeClub
    attr_reader :name, :bikers

    def initialize(name)
        @name = name
        @bikers = []
    end

    def add_biker(biker)
        @bikers << biker
    end

    def most_rides
        return nil if @bikers.empty?

        max_rides = @bikers.first
        @bikers.each do |biker|
            max_rides = biker if biker.rides_count > max_rides.rides_count
        end

        max_rides
    end
end