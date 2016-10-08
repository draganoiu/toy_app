class AddUserIdToArticole < ActiveRecord::Migration[5.0]
  def change
  	add_column :articoles, :user_id, :integer
  end
end
