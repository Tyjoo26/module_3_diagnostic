class SearchController < ApplicationController

  def index
    @conn = Faraday.new(:url => 'https://developer.nrel.gov') do |faraday|
      faraday.headers["X-API-KEY"] = "ENV[API_KEY]"
    end


    station_info = @conn.get "/api/alt-fuel-stations/v1/nearest.json?location=#{params["q"]}&fuel_type=ELEC"
    binding.pry
  end
end
