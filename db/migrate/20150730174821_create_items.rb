class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :model
      t.boolean :checked_out

      t.timestamps null: false
    end
  end
end
