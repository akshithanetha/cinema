class RemunerationHistory < ApplicationRecord
  belongs_to :actor

  #scope :costs_more_than, ->(amount) { where('amount > ?', amount) }

end
