class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest, null: false
      t.string :curl_pattern
      t.string :curl_type
      t.string :porosity
      t.string :density
      t.string :width

      t.timestamps
    end
  end
end
