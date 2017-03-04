class AddSendToCreateLetterHeaders < ActiveRecord::Migration[5.0]
  def change
    add_column :letter_headers, :send_from, :string
  end
end
