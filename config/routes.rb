Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/lastreviews" => "reviews#show_last_reviews"
  get "/searchreviews" => "reviews#show_search_reviews"


end
