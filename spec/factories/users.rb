# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  name                         :string(255)      not null
#  crypted_password             :string(255)
#  salt                         :string(255)
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  remember_me_token            :string(255)
#  remember_me_token_expires_at :datetime
#
# Indexes
#
#  index_users_on_name               (name) UNIQUE
#  index_users_on_remember_me_token  (remember_me_token)
#

FactoryGirl.define do
  factory :user do
    name "MyString"
    crypted_password "MyString"
    salt "MyString"
  end
end
