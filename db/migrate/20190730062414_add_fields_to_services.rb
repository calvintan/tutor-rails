class AddFieldsToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :time, :datetime
    add_column :services, :location, :string
  end
end
