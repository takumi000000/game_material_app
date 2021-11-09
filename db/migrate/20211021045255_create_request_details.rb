class CreateRequestDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :request_details do |t|
      t.integer :request_id, null: false
      t.integer :material_genre_id, null: false
      t.string :material_size, null:false
      t.string :specification

      t.timestamps
    end
  end
end
