# == Schema Information
#
# Table name: crawls
#
#  id           :bigint(8)        not null, primary key
#  user_id      :integer
#  name         :string
#  walkable     :boolean          default(TRUE)
#  public       :boolean          default(FALSE)
#  neighborhood :string
#  length       :integer
#  distance     :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  route        :string           is an Array
#

require 'test_helper'

class CrawlTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
