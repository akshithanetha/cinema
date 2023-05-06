class RemoveColumnFromActors < ActiveRecord::Migration[7.0]
  def change
    remove_column :actors, :dob, :integer
  end
end
