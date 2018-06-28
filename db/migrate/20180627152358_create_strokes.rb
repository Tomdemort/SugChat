class CreateStrokes < ActiveRecord::Migration[5.2]
  def change
    create_table :strokes do |t|
      t.integer :chat_room_id
      t.integer :x
      t.integer :y
      t.integer :rgb
      t.integer :px

      t.timestamps
    end
  end
end
