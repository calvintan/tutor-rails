class AddDifficultyColumnToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :difficulty, :string
  end
end
