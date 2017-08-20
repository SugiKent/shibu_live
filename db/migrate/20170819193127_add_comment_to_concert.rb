class AddCommentToConcert < ActiveRecord::Migration[5.1]
  def change
    add_column :concerts, :comment, :text
  end
end
