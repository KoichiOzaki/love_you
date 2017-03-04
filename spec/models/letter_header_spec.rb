# == Schema Information
#
# Table name: letter_headers
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  user_id    :integer          not null
#  status     :integer
#  url        :string(255)
#  keyword    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_letter_headers_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe LetterHeader, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
