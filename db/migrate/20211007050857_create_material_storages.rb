class CreateMaterialStorages < ActiveRecord::Migration[5.2]
  def change
    create_table :material_storages do |t|
      t.string :file_name, null: false
      t.string :title, null: false
      t.integer :user_id, null:false
      t.integer :material_kind_id, null:false
      t.integer :material_genre_id, null:false
      t.integer :request_id, default: 0
      t.date :start_date
      t.date :completion_date


      t.timestamps
    end
  end
end
