class RemoveFieldsFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :time, :datetime
    remove_column :bookings, :location, :string
  end
end
