class AddColumsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_code, :string
    add_column :products, :description, :text
  end
end
