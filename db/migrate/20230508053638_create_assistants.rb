class CreateAssistants < ActiveRecord::Migration[7.0]
  def change
    create_table :assistants do |t|
      t.references :assistable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
