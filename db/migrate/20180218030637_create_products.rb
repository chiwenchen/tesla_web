class CreateProducts < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table(:products, id: :uuid)do |t|
      t.string :name
      t.integer :price
      t.string :main_image
      t.timestamps null: false
    end
  end
end
