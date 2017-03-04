class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :dear, null: false
      t.string :mail, null: false
      t.integer :letter_header_id, null: false, index: true
      t.timestamps
    end
  end
end
