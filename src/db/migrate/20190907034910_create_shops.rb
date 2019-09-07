class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.integer :parent_id
      t.string :name
      t.float :lng
      t.float :lat

      t.timestamps
    end
  end
end
