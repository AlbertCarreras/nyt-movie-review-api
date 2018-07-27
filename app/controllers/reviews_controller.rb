require 'rest-client'
require 'json'

class ReviewsController < ApplicationController

    def show
        @reviews = RestClient.get("https://api.nytimes.com/svc/movies/v2/reviews/all.json?api-key=c4c50c9ebc8f4db5a0c071c9de2c6d68")
        @reviews = JSON.parse(@reviews)
        
        render json: @reviews
    end

end
