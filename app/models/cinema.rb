class Cinema < ApplicationRecord
  has_many :actors, dependent: :destroy
  has_one :collection
  has_many :remuneration_histories, through: :actors
  has_many :assistants, as: :assistable

  include Validatable
  validates :name, length: {minimum:3}, uniqueness: { message: "already exists"}

  # def actors_count
  #   execute << -SQL

  #       SELECT COUNT(DISTINCT actors.id) FROM cinemas
  #       LEFT OUTER JOIN actors ON actors.cinema_id = cinemas.id
  #       GROUP BY cinemas.id

  #   SQL
  # end
  # def actors.count
  #   ActiveRecord::Base.connection.execute("SELECT COUNT(DISTINCT actors.id) FROM cinemas
  #   LEFT OUTER JOIN actors ON actors.cinema_id = cinemas.id
  #   GROUP BY cinemas.id")
  # end
end

