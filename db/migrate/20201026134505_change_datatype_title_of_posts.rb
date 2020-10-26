class ChangeDatatypeTitleOfPosts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :title, :string
  end
end
