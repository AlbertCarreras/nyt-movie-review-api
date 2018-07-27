Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/lastreviews" => "reviews#show"
  get "/searchreviews" => "reviews#show"


end
