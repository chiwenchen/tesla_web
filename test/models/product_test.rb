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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
