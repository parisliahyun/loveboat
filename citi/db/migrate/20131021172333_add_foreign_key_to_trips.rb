class AddForeignKeyToTrips < ActiveRecord::Migration
  def change

     add_reference :trips, :user
  end
end
