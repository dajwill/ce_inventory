class User < ActiveRecord::Base
  has_secure_password
  has_many :check_outs
end
