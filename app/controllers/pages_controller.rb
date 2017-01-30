class PagesController < ApplicationController
before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    render :welcome
  end

  def about
    render :about
    @header =   "This page tells you about us"
  end

  def contest
  flash[:notice] = "Sorry, the contest has ended"
  redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end

  def secrets
    puts "You know shinigamis eat apples"
    flash[:alert] = "Sorry, you're not authorized to see that page!"
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/cats"
  end

end
