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

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :password, :password_confirmation, :is_admin, :funfact
  has_many :seats

  def is_admin?
    self.is_admin
  end
end
