# == Schema Information
#
# Table name: cart_items
#
#  id         :uuid             not null, primary key
#  variant_id :uuid             not null
#  product_id :uuid             not null
#  cart_id    :uuid             not null
#  user_id    :uuid             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CartItem < ActiveRecord::Base
end
