# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  is_admin        :boolean
#  funfact         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :generic_user, class: User do
    name                  'Sawyer'
    email                 'generic@gmail.com'
    password              'a'
    password_confirmation 'a'
    funfact               'Son of a bitch!'
  end

  factory :regular_user, class: User do
    name                  'Sayid'
    email                 'regular@gmail.com'
    password              'a'
    password_confirmation 'a'
    funfact               'hes a pimp Iraqi of the Republican Guard!'
  end

  factory :admin_user, class: User do
    name                  'Jacob'
    email                 'admin@gmail.com'
    password              'a'
    password_confirmation 'a'
    funfact               'hes watching you sleep...'
  end
end
