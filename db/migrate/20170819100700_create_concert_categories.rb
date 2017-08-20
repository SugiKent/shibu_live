class CreateConcertCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :concert_categories do |t|
      t.references :concert, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
