class Waitlist < ActiveRecord::Base
  has_many :users, through: :waitlist_users
  has_many :waitlist_users
  belongs_to :item

  def self.find_or_create(attributes)
    Waitlist.where(attributes).first || Waitlist.create(attributes)
  end
end
