class AddWaitlistToWaitlistUser < ActiveRecord::Migration
  def change
    add_reference :waitlist_users, :waitlist, index: true, foreign_key: true
  end
end
