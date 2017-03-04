class CreateLetterHeaders < ActiveRecord::Migration[5.0]
  def change
    create_table :letter_headers do |t|
      t.string :title,            :null => false
      t.integer :user_id, null: false, index: true
      t.integer :status
      t.string :url
      t.string :keyword
      t.timestamps
    end
  end
end
