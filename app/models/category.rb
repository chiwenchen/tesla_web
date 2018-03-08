# == Schema Information
#
# Table name: categories
#
#  id          :uuid             not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Category < ActiveRecord::Base
  has_many :products, through: :category_associations
  has_many :category_associations
end
