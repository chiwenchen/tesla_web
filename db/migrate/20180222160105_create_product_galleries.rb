class CreateProductGalleries < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :product_galleries, id: :uuid do |t|
      t.string :image
      t.text :url
      t.timestamps null: false
    end
  end
end
