class ActorSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :age_above_40?, :remuneration
  #has_many :remuneration_histories

  def age_above_40?
    object.age > 40
  end
  def remuneration
    object.remuneration_histories
  end
end
