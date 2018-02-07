class SearchController < ApplicationController

  def index
    @conn = Faraday.new(:url => 'https://developer.nrel.gov')


    station_info = @conn.get "/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["api_key"]}&location=80203&fuel_type=ELEC&fuel_type=LPG"

    station_response = JSON.parse(station_info.body, symbolize_names: true)

    redirect_to search_path
    binding.pry
  end
end
