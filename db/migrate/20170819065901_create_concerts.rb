class CreateConcerts < ActiveRecord::Migration[5.1]
  def change
    create_table :concerts do |t|
      t.string :title
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
