module ShowPageHelper
  def showpage
    plane = FactoryGirl.create(:plane)
    user = FactoryGirl.create(:user)
    flight = FactoryGirl.create(:flight)
    flight.plane = plane
    flight.save
    flight.create_seats
    visit root_path
    login_to_system(user)
    click_link("A55")
  end

  def searchpage
    plane = FactoryGirl.create(:plane)
    user = FactoryGirl.create(:user)
    flight = FactoryGirl.create(:flight)
    flight.plane = plane
    flight.save
    flight.create_seats
    visit root_path
    login_to_system(user)
    click_link("Search Flights")
  end
end
