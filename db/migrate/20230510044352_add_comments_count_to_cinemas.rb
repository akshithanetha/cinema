class AddCommentsCountToCinemas < ActiveRecord::Migration[7.0]
  def change
    add_column :cinemas, :comments_count, :integer
  end
end
