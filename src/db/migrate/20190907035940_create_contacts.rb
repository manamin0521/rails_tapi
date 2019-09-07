class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :fee
      t.text :comment
      t.integer :user_id
      t.datetime :request_receive_time
      t.integer :request_user_id
      t.integer :menu_id
      t.integer :shop_id

      t.timestamps
    end
  end
end
