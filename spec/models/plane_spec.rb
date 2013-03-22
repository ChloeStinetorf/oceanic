# == Schema Information
#
# Table name: planes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  rows       :integer
#  aisles     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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
