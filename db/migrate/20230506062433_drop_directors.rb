class DropDirectors < ActiveRecord::Migration[7.0]
  def change
    drop_table :directors
  end
end
