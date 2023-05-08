class CinemaSerializer < ActiveModel::Serializer
  attributes :id, :name, :language
  has_many :actors
end
