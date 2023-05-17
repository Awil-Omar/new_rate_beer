class Rating < ApplicationRecord
  belongs_to :beer

  validates :score, presence: true , length: {minimum: 1, maximum: 100}
end
