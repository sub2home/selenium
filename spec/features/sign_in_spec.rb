require "./spec/sauce_helper"

describe "Landing page", :sauce => true do
  it "Should open store page" do
    visit "http://sub2home.com"
    page.has_title? "sub2home - Deine Onlinetheke für SUBWAY®-Lieferservices"
    fill_in "locationSelectionInput", :with => "87700"
    page.find(:css, "#deliveryAreaSelection span:first-child").text.should eq "Innenstadt"
    page.find(:css, "#deliveryAreaSelection span:first-child").click
    page.has_title? "SUBWAY® Memmingen Lieferservice - sub2home"
  end
end