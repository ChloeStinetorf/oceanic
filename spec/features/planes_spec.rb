require 'spec_helper'

describe "Planes" do
  describe "GET /planes" do
    it "should have a button to add a plane" do
      visit planes_path
      page.should have_link("Add Plane")
    end
    it "should have a form to build a plane", :js => true do
      visit planes_path
      click_link("Add Plane")
      page.should have_button("Create Plane")
      page.should have_link("Cancel")
    end
    it "should be able to cancel the form", :js => true do
      visit planes_path
      click_link("Add Plane")
      click_link("Cancel")
      page.should_not have_button("Create Plane")
    end
  end

  describe "POST /planes" do
    it "should make a new plane", :js => true do
      visit planes_path
      click_link("Add Plane")
      fill_in("Name", :with => "A 787")
      fill_in("Rows", :with => "10")
      fill_in("Aisles", :with => "4")
      click_button("Create Plane")
      page.should_not have_link("Create Plane")
      expect(Plane.first.name).to eq "A 787"
      page.should have_text("A 787")
    end
  end
end
