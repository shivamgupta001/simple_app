class CreatePaypals < ActiveRecord::Migration
  def change
    create_table :paypals do |t|
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
