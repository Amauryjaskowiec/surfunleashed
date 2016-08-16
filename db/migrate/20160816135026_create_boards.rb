class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.string :name
      t.string :type
      t.integer :size
      t.integer :price_per_day
      t.float :description
      t.string :text
      t.string :address
      t.string :city
      t.string :country
      t.boolean :automatic_reservation
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
