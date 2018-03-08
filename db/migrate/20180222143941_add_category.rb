class AddCategory < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table(:categories, id: :uuid)do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
    create_table(:category_associations, id: :uuid)do |t|
      t.uuid :product_id
      t.uuid :category_id
      t.timestamps
    end
  end
end
