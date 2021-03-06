# == Schema Information
#
# Table name: images
#
#  id               :integer          not null, primary key
#  image            :string(255)      not null
#  message_id       :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  letter_header_id :integer          not null
#
# Indexes
#
#  index_images_on_message_id  (message_id)
#

class Image < ApplicationRecord
  belongs_to :letter_header
  belongs_to :message
end
