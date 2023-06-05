require 'rspec'
require './lib/ride'
require './lib/biker'

RSpec.describe Biker do

    it "exists" do
        biker = Biker.new("Kenny", 30)
        expect(biker).to be_an_instance_of(Biker)
    end

    
end