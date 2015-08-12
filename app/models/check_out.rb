class CheckOut < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
  # validates :item_id, :user_id, :return_date, presence: true
  validates :item_id, uniqueness: { message: 'Item is already checked out!' }
end
