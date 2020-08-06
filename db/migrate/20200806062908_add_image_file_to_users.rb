class AddImageFileToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :image_file, :string
  end
end
