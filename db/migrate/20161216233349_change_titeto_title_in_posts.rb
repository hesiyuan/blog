class ChangeTitetoTitleInPosts < ActiveRecord::Migration[5.0]
  def change
  	rename_column :Posts, :tite, :title
  end
end
