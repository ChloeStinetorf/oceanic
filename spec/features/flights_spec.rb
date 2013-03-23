require "spec_helper"

describe "Flights" do
  describe "GET /flights as admin" do
    it "should have add flight button" do
      visit flights_path
      page.should have_link("Add Flight")
    end
    it "should have a flight form", :js => true do
      visit flights_path
      click_link("Add Flight")
      page.should have_link("Cancel")
      page.should have_button("Create Flight")
    end
    it "should cancel the flight form", :js => true do
      visit flights_path
      click_link("Add Flight")
      click_link("Cancel")
      page.should_not have_button("Create Flight")
    end
  end

  describe "POST /flights as admin" do
    it "should create a flight and add it to the list of flights", :js => true do
      FactoryGirl.create(:plane)
      visit flights_path
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

end
