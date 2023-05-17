class Brewery < ApplicationRecord
  has_many :beers
  has_many :ratings, through: :beers
  validates :name, presence: true
  validates :year, presence: true,  numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1800,
    less_than_or_equal_to: Date.today.year
  }
end
