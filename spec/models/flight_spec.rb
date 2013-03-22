require 'spec_helper'

describe Flight do
  flight = FactoryGirl.create(:flight)

  describe '.create' do
    it 'creates a Flight' do
      flight.should be_an_instance_of(Flight)
      flight.name.should eq 'A55'
      flight.destination.should eq 'JFK'
      flight.origin.should eq 'PHL'
      flight.date.to_s.should eq '2013-03-03'
    end
  end

  describe '#seats' do
    it 'has seats' do
      flight = FactoryGirl.create(:flight)
      seat = FactoryGirl.create(:seat)
      flight.seats << seat
      expect(flight.seats.length).to eq 1
    end
  end
end