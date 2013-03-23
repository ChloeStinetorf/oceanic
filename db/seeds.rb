User.delete_all
Plane.delete_all
Flight.delete_all

u1 = User.create(:name => 'Bob', :email => 'bob@gmail.com', :password => 'a', :password_confirmation => 'a', :is_admin => true)
p1 = Plane.create(:name => '747', :rows => 20, :aisles => 4)
f1 = Flight.create(:name => '45', :destination => 'SFO', :origin => 'LAX', :date => '2013-03-22')

