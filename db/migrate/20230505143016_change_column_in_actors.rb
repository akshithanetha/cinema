class ChangeColumnInActors < ActiveRecord::Migration[7.0]
  def change
   reversible do |dir|
    change_table :actors do |t|
      dir.up {t.change :age, :integer}
      dir.down {t.change :age, :string}
    end
   end
  end
end
