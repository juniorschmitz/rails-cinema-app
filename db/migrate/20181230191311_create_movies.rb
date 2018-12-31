class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :classification_age
      t.text :synopsis
      t.float :ticket_price
      t.string :catalog_image

      t.timestamps
    end
  end
end
