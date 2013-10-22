class SearchesController < ApplicationController

  def index
    @coordinates = Geocoder.coordinates(params[:address])

        @x = @coordinates[0]
        @y = @coordinates[1]

 
        @x2 = []
        Citibikenyc.branches.values[2].each do |station_location| 
        @x2 <<  station_location.values[1]
        end

        @y2 = []
        Citibikenyc.branches.values[2].each do |station_location| 
          @y2 <<  station_location.values[2]
        end

        @docks = []
        Citibikenyc.branches.values[2].each do |dock| 
          @docks <<  dock.values[3]
        end



        @arrays_of_dock_coordinates = @x2.zip(@y2)

  
        @distances = []
        @arrays_of_dock_coordinates.each do |lat, long|
        @distances << Math.hypot(@x - lat,@y - long)
        end

        # @arrays_of_dock_coordinates.each do |lat,long| 
        #   @result = distance(@x,@y,lat,long)
        # end
   

        


      render :index
    end

  # def results
  #   @coordinates
  #   render :results
  # end  
end