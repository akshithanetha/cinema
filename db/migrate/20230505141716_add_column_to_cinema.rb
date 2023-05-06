class AddColumnToCinema < ActiveRecord::Migration[7.0]
  def change
    add_column :cinemas, :description, :string
  end
end
