class CreateWaitlistUsers < ActiveRecord::Migration
  def change
    create_table :waitlist_users do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
