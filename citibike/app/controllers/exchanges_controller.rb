class ExchangesController < ApplicationController

  def new
    @exchange = Exchange.new
    render :new
  end

  def update
    # @exchange = Exchange.find(id: params[:id])
    # @exchange.update_attributes(:vendor_id => current_user.id)
    # redirect_to exchange_path(@exchange)
  end

  def create
    @exchanges = Exchange.all
    @exchange = Exchange.new(exchange_params)  

    choice = params[":is_bike"]    
    if choice == "true"
      @exchange.is_bike = true
    elsif 
      choice == "false"
      @exchange.is_bike = false
    end

    @coordinates = Geocoder.coordinates(@exchange.station)
    unless @coordinates.nil?
      @coordinates = { latitude: @coordinates[0], longitude: @coordinates[1] }
      @all_citibike_stations = Citibikenyc.stations.values[2]

      @station = @all_citibike_stations.min_by do |station|
        distance_x = @coordinates[:longitude] - station["longitude"]
        distance_y = @coordinates[:latitude] - station["latitude"]
        Math.hypot( distance_x, distance_y )    
      end 
      @exchange.station = @station["label"]
      @exchange.save  
      redirect_to exchange_path(@exchange)
    else
      render :new  
    end
  end

  def show
    @exchange = Exchange.find(params[:id])
    # @exchange.requester_id = current_user.id
    render :show
  end

  def index
    @exchanges = Exchange.all

    render :index
  end

  def confirm
    @exchange = Exchange.find(params[:id])
    @exchange.requester_id = current_user.id
    @exchange.save!
    redirect_to user_path(current_user)
  end

  def claim
    @exchange = Exchange.find(params[:id])
    @exchange.vendor_id = current_user.id
    current_user.role = "vendor"
    current_user.save!
    @exchange.save!
    redirect_to user_path(current_user)
  end

  def destroy
   @exchange = Exchange.find(params[:id])
    if @exchange.destroy
      redirect_to user_path(current_user)
    else 
      render :new
    end
  end
    
  private

  def exchange_params
      params.require(:exchange).permit(:is_bike, :date, :time, :price, :station)
  end

end
