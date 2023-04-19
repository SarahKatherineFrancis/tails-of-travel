class AddMainPhotoToTrips < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :main_photo, :string
  end
end
