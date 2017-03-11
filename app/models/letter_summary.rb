# == Schema Information
#
# Table name: letter_summaries
#
#  id               :integer          not null, primary key
#  letter_header_id :integer          not null
#  message_id       :integer          not null
#  sort_no          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_letter_summaries_on_letter_header_id  (letter_header_id)
#  index_letter_summaries_on_message_id        (message_id)
#

class LetterSummary < ApplicationRecord
  belongs_to :letter_header
  belongs_to :message
end
