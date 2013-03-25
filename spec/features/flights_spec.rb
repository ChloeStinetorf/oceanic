require "spec_helper"
require 'features/shared/login_helper'
require 'features/shared/showpage_helper'
include LoginHelper
include ShowPageHelper

describe "Flights" do
  describe "GET /flights as admin" do
    it "should have add flight button", :js => true do
      plane = FactoryGirl.create(:plane)
      flight = FactoryGirl.create(:flight)
      plane.flights << flight
      admin = FactoryGirl.create(:admin)
      visit flights_path
      login_to_system(admin)
      page.should have_link("Add Flight")
    end
    it "should have a flight form", :js => true do
      admin = FactoryGirl.create(:admin)
      visit flights_path
      login_to_system(admin)
      click_link("Add Flight")
      page.should have_link("Cancel")
      page.should have_button("Create Flight")
    end
    it "should cancel the flight form", :js => true do
      admin = FactoryGirl.create(:admin)
      visit flights_path
      login_to_system(admin)
      click_link("Add Flight")
      click_link("cancel_create")
      page.should_not have_button("Create Flight")
    end
  end

  describe "POST /flights as admin" do
    it "should create a flight and add it to the list of flights", :js => true do
      FactoryGirl.create(:plane)
      admin = FactoryGirl.create(:admin)
      visit flights_path
      login_to_system(admin)
      click_link("Add Flight")
      fill_in("Name", :with => "A 787")
      fill_in("Origin", :with => "SYD")
      fill_in("Destination", :with => "LAX")
      click_button("Create Flight")
      page.should_not have_button("Create Flight")
      expect(Flight.first.name).to eq "A 787"
      page.should have_text("A 787")
      page.should have_text("SYD")
      page.should have_text("LAX")
    end
  end

  describe "get /flight/:id as user" do
    it "should bring us to the Flight show page", :js => true do
      plane = FactoryGirl.create(:plane)
      user = FactoryGirl.create(:user)
      flight = FactoryGirl.create(:flight)
      flight.plane = plane
      flight.save
      flight.create_seats
      visit root_path
      login_to_system(user)
      page.should have_link("Search")
      page.should have_link("Search Flights")
      page.should have_link("A55")
      click_link("A55")
      page.should have_button("Purchase")
      page.should have_text('Available')
    end

    it "should let us 'purchase' seats", :js => true do
      showpage
      page.should have_button("Purchase")
      page.should have_text('Available')
      # find('div.available').first().click
      a= first(:css, 'div.available')
      a.click
      page.should have_css('.selected', :count => 1)
      click_button("Purchase")
      page.should have_css('.taken', :count => 1)
    end
  end

  describe "search flights feature" do
    it "should allow us to search flights", :js => true do
      plane = FactoryGirl.create(:plane)
      user = FactoryGirl.create(:user)
      flight = FactoryGirl.create(:flight)
      flight.plane = plane
      flight.save
      flight.create_seats
      visit root_path
      login_to_system(user)
      click_link("Search Flights")
      select("PHL", :from => "origin")
      select("JFK", :from => "destination")
      click_button("Search Itinerary")
      page.should have_text("A55")
    end

    # it "should let us use the fucking cancel button", :js => true do
    #   searchpage
    #   click_link("Cancel")
    #   page.should_not have_button("Search Destinations")
    # end
  end

end
