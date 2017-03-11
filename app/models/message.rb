# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  body       :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  color      :string(255)
#  animation  :string(255)
#

class Message < ApplicationRecord
  has_one :letter_summary
  has_one :image
end
