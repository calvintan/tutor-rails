class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :title
      t.string :category
      t.string :description
      t.datetime :time
      t.string :location

      t.timestamps
    end
  end
end
