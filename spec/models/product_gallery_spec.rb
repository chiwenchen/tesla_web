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

require 'rails_helper'

RSpec.describe ProductGallery, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
