class AddShowToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :show, :boolean, default: true
  end
end
