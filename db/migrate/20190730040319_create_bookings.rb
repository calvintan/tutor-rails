class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :time
      t.string :location
      t.references :service, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :confirmed, default: false

      t.timestamps
    end
  end
end
