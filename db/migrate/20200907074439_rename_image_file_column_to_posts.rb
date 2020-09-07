class RenameImageFileColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :image_file, :picture
  end
end
