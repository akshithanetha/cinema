class AddColumnToActors < ActiveRecord::Migration[7.0]
  def change
    add_column :actors, :age, :string
  end
end
