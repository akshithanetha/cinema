class Collection < ApplicationRecord
  belongs_to :cinema
  has_one :remuneration_history
end
