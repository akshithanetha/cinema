class RemoveColumnFromRemunerationHistories < ActiveRecord::Migration[7.0]
  def change
    remove_column :remuneration_histories, :actors_id, :integer
  end
end
