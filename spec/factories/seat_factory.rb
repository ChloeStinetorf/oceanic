# == Schema Information
#
# Table name: seats
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  flight_id  :integer
#  plane_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :seat, class: Seat do
    name        'f7'
  end
end
