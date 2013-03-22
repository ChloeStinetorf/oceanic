FactoryGirl.define do
  factory :flight, class: Flight do
    name 'A55'
    destination 'JFK'
    origin 'PHL'
    date '2013-03-03'
  end
end