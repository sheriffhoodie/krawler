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
#

class Crawl < ApplicationRecord

end
