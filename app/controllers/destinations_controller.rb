class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
    @max = @destination.posts.max do |a,b|
      a.likes <=> b.likes
      end
  end

  def new
  end

  def edit
  end
end
