# == Schema Information
#
# Table name: authentications
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  provider   :string(255)      not null
#  uid        :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_authentications_on_provider_and_uid  (provider,uid)
#

class Authentication < ApplicationRecord
  # attr_accessor :user_id, :provider, :uid
  belongs_to :user
end
