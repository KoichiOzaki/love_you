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
#  send_from  :string(255)
#
# Indexes
#
#  index_letter_headers_on_user_id  (user_id)
#

FactoryGirl.define do
  factory :letter_header do
    
  end
end
