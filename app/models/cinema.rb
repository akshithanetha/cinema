class Cinema < ApplicationRecord
  has_many :actors
  has_one :collection
  has_many :remuneration_histories, through: :actors
  has_many :assistants, as: :assistable

  include Validatable
  validates :name, length: {minimum:3}, uniqueness: { message: "already exists"}

end
