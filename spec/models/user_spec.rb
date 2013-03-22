# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#  funfact         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe User do
  describe '.create' do
    it 'has an id' do
      user = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(user.id).to_not be nil
    end
  end

  describe '#seats' do
    it 'has seats' do
      seat = FactoryGirl.create(:seat)
      user.seats << seat
      expect(user.seats.count).to eq 1
      end
    end

end
