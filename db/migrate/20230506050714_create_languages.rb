class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    suppress_messages do
      create_table :languages do |t|
        t.string :name

        t.timestamps
      end
    end
    say "created a table"
  end
end
