class RemoveCommentByIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :comment_by_id, :integer
  end
end
