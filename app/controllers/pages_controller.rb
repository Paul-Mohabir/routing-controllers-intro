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

end
