class AddRatingToDays < ActiveRecord::Migration[6.1]
  def change
    add_column :days, :rating, :integer
  end
end
