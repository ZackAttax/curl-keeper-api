class AddWeatherToDays < ActiveRecord::Migration[6.1]
  def change
    add_column :days, :weather, :string
  end
end
