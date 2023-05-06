class CreateJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :actors, :languages do |t|
      t.index [:actor_id, :language_id]
      # t.index [:language_id, :actor_id]
    end
  end
end
