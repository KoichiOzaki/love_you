# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  name             :string(255)      not null
#  crypted_password :string(255)
#  salt             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_users_on_name  (name) UNIQUE
#

FactoryGirl.define do
  factory :user do
    name "MyString"
    crypted_password "MyString"
    salt "MyString"
  end
end
