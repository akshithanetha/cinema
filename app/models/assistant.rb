class Assistant < ApplicationRecord
  belongs_to :assistable, polymorphic: true
end
