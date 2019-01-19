# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  post_text  :text
#  post_image :text
#  likes      :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
end
