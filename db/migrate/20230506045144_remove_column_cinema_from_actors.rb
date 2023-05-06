class RemoveColumnCinemaFromActors < ActiveRecord::Migration[7.0]
  def change
    remove_column :actors, :cinema_id, :integer
  end
end
