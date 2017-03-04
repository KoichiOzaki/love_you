# == Schema Information
#
# Table name: destinations
#
#  id               :integer          not null, primary key
#  dear             :string(255)      not null
#  mail             :string(255)      not null
#  letter_header_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_destinations_on_letter_header_id  (letter_header_id)
#

class Destination < ApplicationRecord
  belongs_to :letter_header
end
