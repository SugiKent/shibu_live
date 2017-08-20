class AddColumnToConcert < ActiveRecord::Migration[5.1]
  def change
    add_reference :concerts, :user, foreign_key: true
  end
end
