# == Schema Information
#
# Table name: carts
#
#  id          :uuid             not null, primary key
#  user_id     :uuid             not null
#  status      :integer          default(0), not null
#  total_price :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cart < ActiveRecord::Base
  enum status: {
    shopping: 0,
    checked_out: 1
  }
  belongs_to :user
  has_many :cart_items
end
