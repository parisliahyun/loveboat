class SearchesController < ApplicationController

  def index
    @coordinates = Geocoder.coordinates(params[:address])
       

    # this grabs the lat and long from Geocoder for the desired destination.
        @x = @coordinates[0]
        @y = @coordinates[1]

    # # this method calls all the lats and longs for all of the bike docks.
        @x2 = []
        Citibikenyc.branches.values[2].each do |station_location| 
        @x2 <<  station_location.values[1]
        end

        @y2 = []
        Citibikenyc.branches.values[2].each do |station_location| 
          @y2 <<  station_location.values[2]
        end

        @arrays_of_dock_coordinates = []
        @arrays_of_dock_coordinates << @x2.zip(@y2)

    # setting citibike data equal to an instance variable. 
    # @cb_ll_list = Citibikenyc.branches.values[2]

    # below measures the distance between the destination and a dock location.
        # def distance(x,x2,y,y2)
        # Math.sqrt(( x - x2)**2 + (y - y2)**2)
        # end

        # @arrays_of_dock_coordinates.each do |lat,long| @result = distance(@x,@y,lat,long)
        # end

        # @arrays_of_dock_coordinates.min_by do |coordinates| coordinates.distance

      render :index
    end

  # def results
  #   @coordinates
  #   render :results
  # end  
end