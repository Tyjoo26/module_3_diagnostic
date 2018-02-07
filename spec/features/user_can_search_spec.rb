
feature "User can visit root page" do
  scenario "and search by zipcode" do
    stations = create_list(:station,5)
    stations_2 = create_list(:station,5,  fuel_type: "Electric")
    stations_3 = create_list(:station,5, fuel_type: "Propane")

    visit "/"
    within(".navbar") do
      expect(page).to have_content("AltFuelFinder")
      expect(page).to have_selector("input[value='Search by zip...']")
    end


    fill_in "q", with: "80203"



    # syntax in eq below needs to be fixed
    expect(current_path).to eq(search_path)


    expect(page).to have_content(stations_2.first.name)
    expect(page).to have_content(stations_2.first.address)
    expect(page).to have_content(stations_2.first.fuel_type)
    expect(page).to have_content(stations_2.first.distance)
    expect(page).to have_content(stations_2.first.access_times)

    expect(page).to have_content(stations_3.first.name)
    expect(page).to have_content(stations_3.first.address)
    expect(page).to have_content(stations_3.first.fuel_type)
    expect(page).to have_content(stations_3.first.distance)
    expect(page).to have_content(stations_3.first.access_times)
  end
end
