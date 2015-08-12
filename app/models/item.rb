class Item < ActiveRecord::Base
  has_many :check_outs
  has_many :check_out_histories
  has_one :waitlist
end
