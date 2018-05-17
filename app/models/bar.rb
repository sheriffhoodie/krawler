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

class Bar < ApplicationRecord
  validates :name, :address, :type, presence: true

  belongs_to :crawl,
  foreign_key: :crawl_id,
  class_name: :Crawl

end
