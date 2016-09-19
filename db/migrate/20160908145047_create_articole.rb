class CreateArticole < ActiveRecord::Migration[5.0]
  def change
    create_table :articoles do |t|
    	t.string :title
    	
    end
  end
end
