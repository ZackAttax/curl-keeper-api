class AddLikeProductToDay < ActiveRecord::Migration[6.1]
  def change
    add_column :days, :likeProduct, :string, :default => "unliked"
  end
end
