# == Schema Information
#
# Table name: category_associations
#
#  id          :uuid             not null, primary key
#  product_id  :uuid
#  category_id :uuid
#  created_at  :datetime
#  updated_at  :datetime
#

class CategoryAssociation < ActiveRecord::Base
  belongs_to :product
  belongs_to :category
end
