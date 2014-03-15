describe "home.home", :sauce => true do

  it "should open store page of Memmingen" do
    visit "/"
    page.has_title? "sub2home - Deine Onlinetheke für SUBWAY®-Lieferservices"
    fill_in "Wo", with: "87700"
    page.find("span", text: "Innenstadt" ).click
    page.has_title? "SUBWAY® Memmingen Lieferservice - sub2home"
  end

end
