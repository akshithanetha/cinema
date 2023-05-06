class AddColumnToCinemas < ActiveRecord::Migration[7.0]
  def change
    add_column :cinemas, :language, :string
  end
end
