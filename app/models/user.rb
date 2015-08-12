class User < ActiveRecord::Base
  has_secure_password
  has_many :waitlists, through: :waitlist_users
  has_many :waitlist_users
  has_many :check_outs
  has_many :check_out_histories
  validates :email, uniqueness: true
end
