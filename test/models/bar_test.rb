# == Schema Information
#
# Table name: bars
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  address     :string
#  type        :string
#  description :string
#  crawl_id    :integer
#  rating      :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class BarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
