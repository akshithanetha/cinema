class RemunerationHistorySerializer < ActiveModel::Serializer
  attributes :id, :amount
  #belongs_to :actor, serializer: AttributeSerializer
end
