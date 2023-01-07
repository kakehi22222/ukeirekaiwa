class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.text :content , null: false
      t.timestamps
      t.string :nickname ,null: false
    end
  end
end
