class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.references :chat_room_id
      t.string :message
      t.references :user_id

      t.timestamps
    end
  end
end
