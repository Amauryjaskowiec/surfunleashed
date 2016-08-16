class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.datetime :accepted_at
      t.text :review
      t.integer :rating
      t.references :users, foreign_key: true
      t.references :boards, foreign_key: true

      t.timestamps
    end
  end
end
