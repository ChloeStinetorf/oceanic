User.delete_all
Plane.delete_all
Flight.delete_all

u1 = User.create(:name => 'Bob', :email => 'bob@gmail.com', :password => 'a', :password_confirmation => 'a', :is_admin => true, :funfact => 'admin')
u2 = User.create(:name => 'Jane', :email => 'jane@gmail.com', :password => 'a', :password_confirmation => 'a', :is_admin => false, :funfact => 'lost fan')
u3 = User.create(:name => 'Chloe', :email => 'chloe@gmail.com', :password => 'a', :password_confirmation => 'a', :is_admin => false, :funfact => 'lost is okay')
u4 = User.create(:name => 'Sawyer', :email => 'sawyer@gmail.com', :password => 'a', :password_confirmation => 'a', :is_admin => false, :funfact => 'Hey, freckles!')

p1 = Plane.create(:name => 'Boeing 747', :rows => 20, :aisles => 4)
p2 = Plane.create(:name => 'Stratocruiser 377', :rows => 30, :aisles => 6)
p3 = Plane.create(:name => 'Clipper 314', :rows => 10, :aisles => 3)
p4 = Plane.create(:name => 'Sukhoi Superjet-100', :rows => 50, :aisles => 8)




