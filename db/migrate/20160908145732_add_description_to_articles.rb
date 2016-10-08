class AddDescriptionToArticles < ActiveRecord::Migration[5.0]
  def change
  	add_column :articoles, :description, :text 
  	
  end
end
