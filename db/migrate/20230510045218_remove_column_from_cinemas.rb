class RemoveColumnFromCinemas < ActiveRecord::Migration[7.0]
  def change
    remove_column :cinemas, :comments_count, :integer
  end
end
