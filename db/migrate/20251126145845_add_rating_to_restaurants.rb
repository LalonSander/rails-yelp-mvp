class AddRatingToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :rating, :float, default: 0.0, null: false
  end
end
