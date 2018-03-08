# == Schema Information
#
# Table name: products
#
#  id         :uuid             not null, primary key
#  name       :string
#  price      :integer
#  main_image :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ActiveRecord::Base
  mount_uploader :main_image, ProductMainImageUploader

  has_many :categories, through: :category_associations
  has_many :category_associations
  has_many :variants
end
