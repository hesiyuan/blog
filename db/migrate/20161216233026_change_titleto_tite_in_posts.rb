class ChangeTitletoTiteInPosts < ActiveRecord::Migration[5.0]
  def change
  	rename_column :Posts, :title, :tite 
  end
end
