class Item < ActiveRecord::Base
  has_many :check_outs
end
