class CinemaSerializer < ActiveModel::Serializer
  attributes :id, :name, :language, :actors_count
  #has_many :actors

  # def actors_count
  #   execute << -SQL
  #         SELECT COUNT *
  #         FROM cinemas INNER JOIN  actors ON cinemas.id = actors.cinema_id
  #         GROUP BY cinema_id
  #     SQL
  # end

  #  def actors_count
  #   ActiveRecord::Base.connection.execute("SELECT COUNT(cinemas.id) AS actors_count FROM cinemas
  #   LEFT OUTER JOIN actors ON actors.cinema_id = cinemas.id WHERE cinemas.id = actors.cinema_id
  #   GROUP BY cinemas.id")
  # end
end
