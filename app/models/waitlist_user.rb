class WaitlistUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :waitlist
end
