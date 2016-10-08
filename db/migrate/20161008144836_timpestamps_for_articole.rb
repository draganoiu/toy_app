class TimpestampsForArticole < ActiveRecord::Migration[5.0]
  def change
  	add_column(:articoles, :created_at, :datetime)
      add_column(:articoles, :updated_at, :datetime)
  end
end
