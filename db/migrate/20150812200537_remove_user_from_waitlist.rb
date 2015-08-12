class RemoveUserFromWaitlist < ActiveRecord::Migration
  def change
    remove_reference :waitlists, :user, index: true, foreign_key: true
  end
end
