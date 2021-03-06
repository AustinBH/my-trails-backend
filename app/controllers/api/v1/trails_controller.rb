class Api::V1::TrailsController < ApplicationController
    def location_search
        # Have to add this check as the Hiking Project does not accept 0 lat or lon params
        if params[:lat] != '0' || params[:lon] != '0'
            trails = "https://www.hikingproject.com/data/get-trails?lat=#{params[:lat]}&lon=#{params[:lon]}&maxDistance=#{params[:distance]}&maxResults=#{params[:results]}&key=#{ENV["HIKING_PROJECT_API_KEY"]}"
            response = RestClient.get(trails)
            json = JSON.parse(response.body)
            render json: json["trails"]
        else
            render json: []
        end
    end

    def ids_search
        trails = "https://www.hikingproject.com/data/get-trails-by-id?ids=#{params[:ids]}&key=#{ENV["HIKING_PROJECT_API_KEY"]}"
        response = RestClient.get(trails)
        json = JSON.parse(response.body)
        render json: json["trails"]
    end
end
