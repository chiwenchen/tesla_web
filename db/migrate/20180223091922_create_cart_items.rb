class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items, id: :uuid do |t|
      t.uuid :variant_id, null: false
      t.uuid :product_id, null: false
      t.uuid :cart_id, null: false
      t.uuid :user_id, null: false
      t.timestamps null: false
    end
  end
end
