class SearchController < ApplicationController

  def index
    @conn = Faraday.new(:url => 'http://api.data.gov') do |faraday|
      faraday.headers["api_key"] = "ENV[API-KEY]"
    end
  end
end
