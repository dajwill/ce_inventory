class CreateCheckOuts < ActiveRecord::Migration
  def change
    create_table :check_outs do |t|
      t.references :item, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.datetime :check_out_date
      t.datetime :return_date

      t.timestamps null: false
    end
  end
end
