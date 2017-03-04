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

class User < ApplicationRecord
  # attr_accessible :name, :password, :password_confirmation, :authentications_attributes
  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :name, uniqueness: true

  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications
end
