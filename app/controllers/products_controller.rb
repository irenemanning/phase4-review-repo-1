class ProductsController < ApplicationController
    before_action :authorize, only: [:create]

    def index
        byebug 
        binding.pry 
        debugger 
        products = Product.all
        render json: products
    end

    def create
        product = Product.create!(product_params)
        render json: product, status: :created 
    end

    def affordable
        affordable = Product.where("price <= ? ", params[:price])
        render json: affordable 
    end

    def priceRange
        binding.pry
        priceRange = Product.where("price >= ? AND price <= ?", params[:price], params[:price2])
        render json: priceRange.pluck(:price)
    end

    def example
        products = Product.all.filter {|product| product.description.include?(params[:word])}
        products = Product.all.filter {|product| product.description.downcase.include?(params[:word].downcase)}
        if products.length > 0
            users = products.map{|p| p.users}.flatten
            binding.pry
            render json: users 
        else
            render json: {errors: "No products found with #{params[:word]}"}
        end
    end

    # Reviews that include
# Create a custom route that takes a parameter of a word. In a new action, look at  the word and find any product descriptions that have that word. Once you have found any product descriptions that have that word, you will find the associated users who have reviewed that product and render back the array of users. If no products are found that have that word in the description, render a json message that says so, including the word that was provided as the parameter, such as “‘hotdogs’ was not found in any of the product descriptions’”

    private

    def  product_params
        params.permit(:name, :description, :price, :image_url, :category)
    end

    def authorize 
        render json: { errors: ["Must be logged in to add a product!"] }, status: 401 unless session[:user_id]
    end

end
