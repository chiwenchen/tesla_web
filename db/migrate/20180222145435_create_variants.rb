class CreateVariants < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table(:variants, id: :uuid)do |t|
      t.uuid :product_id
      t.integer :size
      t.integer :price
      t.integer :stock, default: 0
      t.timestamps null: false
    end
  end
end
