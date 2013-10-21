class TripsController < ApplicationController

  def index
    @trips = Trip.all
    render :index
  end

  def show
    @trip = Trip.find(params[:id])
    render :show
  end

  def purchase
    @trip = Trip.find(params[:id])

    # put the below in the session helper
    # User.find_by(id: session[:user_id])
    if current_user.purchase(@song)
      redirect_to user_path(current_user)
    else
      render :show 
    end
  end

end  