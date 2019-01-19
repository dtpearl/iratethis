# == Schema Information
#
# Table name: comments
#
#  id           :bigint(8)        not null, primary key
#  comment_text :text
#  post_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :post, :optional => true
end
