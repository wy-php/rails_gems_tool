# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id         :bigint(8)        not null, primary key
#  catgory    :integer
#  name       :string(255)
#  num        :integer
#  pirce      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
