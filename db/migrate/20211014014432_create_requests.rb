class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :title
      t.integer :material_storage_id
      t.datetime :delivery_date
      t.integer :user_id
      t.string :specification
      t.integer :user_id

      t.timestamps
    end
  end
end
