class RenamePictureColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :picture, :image_file
  end
end
