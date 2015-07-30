class CreateCheckOutHistories < ActiveRecord::Migration
  def change
    create_table :check_out_histories do |t|
      t.references :user, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
