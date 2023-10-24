Rails.application.routes.draw do

  resources :reviews

  resources :users, only: [:index, :show, :create]

  resources :products, only: [:index, :show, :create] do 
    resources :reviews, only: [:index]
  end 

  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy" 
  
  get "/user_reviews/:number", to: "users#last_reviews"
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end

# Create a custom method in the user model that returns a boolean based on an incoming argument and whether the user has more reviews that that.
# Then create a custom route that takes a number as an argument and uses the custom method you created to help produce all the users who have more than that number of reviews. Once you have established a subset of users, produce an array of review objects with one review from each user, the last one they created. If no users are found, render a json message saying so and including the number that was used in the search.