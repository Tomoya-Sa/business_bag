class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :photo
      t.string :maker
      t.integer :price
      t.string :content

      t.timestamps
    end
  end
end
