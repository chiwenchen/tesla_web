class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts, id: :uuid do |t|
      t.uuid :user_id, null: false
      t.integer :status, null: false, default: 0
      t.integer :total_price, null: false, default: 0
      t.timestamps null: false
    end
  end
end
