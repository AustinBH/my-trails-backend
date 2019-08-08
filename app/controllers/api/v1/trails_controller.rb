class Api::V1::TrailsController < ApplicationController

    def location_search
        trails = "https://www.hikingproject.com/data/get-trails?lat=#{params[:lat]}&lon=#{params[:lon]}&maxDistance=20&maxResults=20&key=#{ENV["HIKING_PROJECT_API_KEY"]}"
        response = RestClient.get(trails)
        json = JSON.parse(response.body)
        render json: json["trails"]
    end

    def ids_search
        trails = "https://www.hikingproject.com/data/get-trails-by-id?ids=#{params[:ids]}&key=#{ENV["HIKING_PROJECT_API_KEY"]}"
        response = RestClient.get(trails)
        json = JSON.parse(response.body)
        render json: json["trails"]
    end

end
