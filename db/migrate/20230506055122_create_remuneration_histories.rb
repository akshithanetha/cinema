class CreateRemunerationHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :remuneration_histories do |t|
      t.string :amount
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
