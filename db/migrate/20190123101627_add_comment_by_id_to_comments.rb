class AddCommentByIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :comment_by_id, :integer
  end
end
