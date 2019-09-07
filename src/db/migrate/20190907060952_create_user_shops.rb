class CreateUserShops < ActiveRecord::Migration[5.2]
  def change
    create_table :user_shops do |t|
      t.references :user, foreign_key: true
      t.references :shop, foreign_key: true
      t.datetime :limit_time

      t.timestamps
    end
  end
end
