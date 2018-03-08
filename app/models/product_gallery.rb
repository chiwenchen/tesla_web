# == Schema Information
#
# Table name: product_galleries
#
#  id         :uuid             not null, primary key
#  image      :string
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductGallery < ActiveRecord::Base
end
