class AddTitleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :title, :integer
  end
end
