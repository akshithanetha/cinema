class ResetAllCinemasCacheCounters < ActiveRecord::Migration[7.0]
  def change
   def up

     Cinema.all.each do |cinema|

     Cinema.reset_counters(cinema.id, :actors)

     end

   end

   def down

     # no rollback needed

   end

  end
end
