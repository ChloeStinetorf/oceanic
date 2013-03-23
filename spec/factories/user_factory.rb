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

FactoryGirl.define do
  factory :user, class: User do
    name                  'Sawyer'
    email                 'generic@gmail.com'
    password              'a'
    password_confirmation 'a'
    funfact               'Son of a bitch!'
  end
  factory :admin, class: User do
    name                  'Sawyer'
    email                 'generic@gmail.com'
    password              'a'
    password_confirmation 'a'
    funfact               'Son of a bitch!'
    is_admin               true
  end
end
