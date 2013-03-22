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

class Seat < ActiveRecord::Base
  attr_accessible :name, :user_id, :flight_id, :plane_id
  belongs_to :user
  belongs_to :flight
  belongs_to :plane
end
