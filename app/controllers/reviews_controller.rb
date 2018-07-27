require 'rest-client'
require 'json'

class ReviewsController < ApplicationController

    def show_last_reviews
        @reviews = RestClient.get("https://api.nytimes.com/svc/movies/v2/reviews/all.json?api-key=#{process.env.API_KEY}")
        @reviews = JSON.parse(@reviews)
        
        render json: @reviews
    end

    def show_search_reviews
        @reviews = RestClient.get("https://api.nytimes.com/svc/movies/v2/reviews/search.json?api-key=#{process.env.API_KEY}&query=#{params["search"]}")
        @reviews = JSON.parse(@reviews)
        
        render json: @reviews
    end

end
