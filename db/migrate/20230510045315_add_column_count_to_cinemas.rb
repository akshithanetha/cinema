class AddColumnCountToCinemas < ActiveRecord::Migration[7.0]
  def change
    add_column :cinemas, :actors_count, :integer
  end
end
