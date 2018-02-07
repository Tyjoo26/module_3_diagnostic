
feature "User can visit root page" do
  scenario "and search by zipcode" do
    station_1 = Station.create(name: )
    visit "/"
    within(".navbar") do
      expect(page).to have_content("AltFuelFinder")
      expect(page).to have_selector("input[value='Search by zip...']")
    end

    expect(current_path).to eq(search_stations_path)
    expect(page).to have_content("Station")
  end
end
