class RemoveColumnCollectionFromRemunerationHistories < ActiveRecord::Migration[7.0]
  def change
    remove_column :remuneration_histories, :collection_id, :integer
  end
end
