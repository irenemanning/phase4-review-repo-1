class UsersController < ApplicationController

    def create
        @user = User.create!(user_params)
        login_user
        render json: @user, status: 201
    end

    def show
        if current_user
        render json: current_user, status: 201
        else 
            render json: { error: "Invalid Username or Password" }, status: 401
        end
    end

    def index
        users = User.all
        render json: users
    end

    def last_reviews
        number = params[:number].to_i
        # filtered_users = User.all.filter do |user| 
        #     user.reviews.length > number  
        # end
        filtered_users = User.all.filter {|user| user.has_more_reviews(number)}

        last_reviews = filtered_users.map do |user|
            user.reviews.last
        end

        if last_reviews.length == 0
            render json: {message: "No users with reviews more than #{number}"}
        else
            render json: last_reviews
        end
        
    end
    # Create a custom method in the user model that returns a boolean based on an incoming argument and whether the user has more reviews that that.
# Then create a custom route that takes a number as an argument and uses the custom method you created to help produce all the users who have more than that number of reviews. Once you have established a subset of users, produce an array of review objects with one review from each user, the last one they created. If no users are found, render a json message saying so and including the number that was used in the search.

    private

    def user_params 
        params.permit(:username, :first_name, :password, :password_confirmation)
    end
end
