class AddMainPhotoToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :main_photo, :string
  end
end
