# == Schema Information
#
# Table name: variants
#
#  id         :uuid             not null, primary key
#  product_id :uuid
#  size       :integer
#  price      :integer
#  stock      :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Variant < ActiveRecord::Base
  enum size: {
    s: 0,
    m: 1,
    l: 2,
    xl: 3,
    xxl: 4
  }

  belongs_to :product
end
