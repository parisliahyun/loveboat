class CreateTrips < ActiveRecord::Migration
def up
    create_table :trips do |t|
    t.string :address, :string, :null => false
    t.boolean :is_favorite
    t.datetime "created_at"
    t.datetime "updated_at"

end
  end

  def down
    drop_table :trips
    end
end
