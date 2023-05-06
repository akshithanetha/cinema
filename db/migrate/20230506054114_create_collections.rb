class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.string :budget
      t.string :box_ofice
      t.references :cinema, null: false, foreign_key: true

      t.timestamps
    end
  end
end
