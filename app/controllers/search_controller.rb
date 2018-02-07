class SearchController < ApplicationController

  def index
    @conn = Faraday.new(:url => 'https://developer.nrel.gov')


    station_info = @conn.get "/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["api_key"]}&location=80203&"
    binding.pry
  end
end
