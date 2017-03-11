class AddAnimationToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :animation, :string
  end
end
