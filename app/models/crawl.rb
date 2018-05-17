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

class Crawl < ApplicationRecord
  validates :name, presence: true

  belongs_to: :user,
  foreign_key: :user_id,
  class_name: :User
  
  has_many: :bars,
  foreign_key: :crawl_id,
  class_name: :Bar
end
