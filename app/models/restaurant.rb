# == Schema Information
#
# Table name: restaurants
#
#  id              :bigint(8)        not null, primary key
#  restaurant_name :text
#  address         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Restaurant < ApplicationRecord
  has_and_belongs_to_many :posts
end
