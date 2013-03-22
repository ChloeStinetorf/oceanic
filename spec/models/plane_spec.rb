require 'spec_helper'

describe Plane do
  describe '.create' do
    it 'creates a plane' do
      plane = FactoryGirl.create(:plane)
      expect(plane).to be_an_instance_of(Plane)
      plane.name.should eq 'Boeing 747'
      plane.aisles.should eq 2
      plane.rows.should eq 3
    end
  end
end
