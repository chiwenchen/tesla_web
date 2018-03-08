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

require 'rails_helper'

RSpec.describe Variant, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
