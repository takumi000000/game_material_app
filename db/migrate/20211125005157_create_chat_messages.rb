class CreateChatMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_messages do |t|
      t.text :content
      t.string :send_user
      t.string :receive_user
      t.timestamps
    end
  end
end
