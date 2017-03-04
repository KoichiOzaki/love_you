class CreateLetterSummaries < ActiveRecord::Migration[5.0]
  def change
    create_table :letter_summaries do |t|
      t.integer :letter_header_id, null: false, index: true
      t.integer :message_id, null: false, index: true
      t.integer :sort_no

      t.timestamps
    end
  end
end
