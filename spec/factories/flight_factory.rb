# == Schema Information
#
# Table name: flights
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  destination :string(255)
#  origin      :string(255)
#  date        :date
#  plane_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :flight, class: Flight do
    name 'A55'
    destination 'JFK'
    origin 'PHL'
    date '2013-03-03'
  end


end
