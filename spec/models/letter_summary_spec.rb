# == Schema Information
#
# Table name: letter_summaries
#
#  id         :integer          not null, primary key
#  letter_id  :integer          not null
#  image_id   :integer          not null
#  sort_no    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_letter_summaries_on_image_id   (image_id)
#  index_letter_summaries_on_letter_id  (letter_id)
#

require 'rails_helper'

RSpec.describe LetterSummary, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
