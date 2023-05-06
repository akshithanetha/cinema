class RenameColumnInActors < ActiveRecord::Migration[7.0]
  def change
    rename_column :actors, :age, :dob
  end
end
