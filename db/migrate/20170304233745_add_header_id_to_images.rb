class AddHeaderIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :letter_header_id, :integer, null: false, index: true
  end
end
