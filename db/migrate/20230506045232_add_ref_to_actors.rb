class AddRefToActors < ActiveRecord::Migration[7.0]
  def change
    add_reference :actors, :cinema, foreign_key: true
  end
end
