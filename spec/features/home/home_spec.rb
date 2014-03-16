describe "home.home", sauce: true do

  it "should open store page of Rügen via delilveryAreaSelection" do
    visit "https://www.sub2home.com"
    has_title? "sub2home - Deine Onlinetheke für SUBWAY®-Lieferservices"
    fill_in "Wo", with: "18574"
    sleep 1
    find("a", text: "Gustow").click
    has_title? "SUBWAY® Rügen Lieferservice - sub2home"
  end

  it "should open store page of Rügen via MapPin" do
    visit "https://www.sub2home.com"
    has_title? "sub2home - Deine Onlinetheke für SUBWAY®-Lieferservices"
    fill_in "Wo", with: "18581"
    sleep 1
    find("h4", text: "Rügen").click
    has_title? "SUBWAY® Rügen Lieferservice - sub2home"
  end

  it "should open storeSuggest popup, fill out the form and click on the overview-link" do
    visit "https://www.sub2home.com"
    has_title? "sub2home - Deine Onlinetheke für SUBWAY®-Lieferservices"
    fill_in "Wo", with: "13347"
    sleep 1
    has_text? "Hier gibt es leider noch keinen Store, der über sub2home liefert."
    fill_in "suggestStoreMessage", with: "Rügenstr. 15 in Rügen um die Ecke bei mir!"
    click_link "Übersicht der Restaurants"
    has_title? "Infotheke - sub2home"
  end

end
