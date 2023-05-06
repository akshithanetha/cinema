class AddRefToRemunerationHistories < ActiveRecord::Migration[7.0]
  def change
    add_reference :remuneration_histories, :actor, null: false, foreign_key: true
  end
end
