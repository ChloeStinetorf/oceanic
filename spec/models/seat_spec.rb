require 'spec_helper'

describe Seat do
  describe '.create' do
    it 'has an id and a name' do
      seat = Seat.create(name: 'f7')
      expect(seat.id).to_not be nil
      expect(seat.name).to_not be nil
    end
  end

  describe '#user' do
    it 'belongs to a user' do
      user= FactoryGirl.create(:regular_user)
      seat = FactoryGirl.create(:seat)
      seat.user = user
      expect(seat.user).to eq user
      end
    end

  describe '#plane' do
    it 'belongs to a plane' do
      plane = FactoryGirl.create(:plane)
      seat = FactoryGirl.create(:seat)
      seat.plane = plane
      expect(seat.plane).to eq plane
      end
    end

  describe '#flight' do
    it 'belongs to a flight' do
      plane = FactoryGirl.create(:flight)
      seat = FactoryGirl.create(:flight)
      seat.flight = flight
      expect(seat.flight).to eq flight
      end
    end



  end

