class PagesController < ApplicationController

  def welcome
    render :welcome
  end

  def about
    render :about
    @header =   "This page tells you about us"
  end

  def contest
    render :contest
  end

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
