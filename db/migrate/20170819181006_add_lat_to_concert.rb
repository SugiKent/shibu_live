class AddLatToConcert < ActiveRecord::Migration[5.1]
  def change
    add_column :concerts, :latitude, :float
    add_column :concerts, :longitude, :float
  end
end
