class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :title, null: false
      t.integer :material_kind_id, null: false
      t.datetime :delivery_date, null: false
      t.integer :user_id, null: false
      t.string :specification
      t.integer :order_user_id

      t.timestamps
    end
  end
end
