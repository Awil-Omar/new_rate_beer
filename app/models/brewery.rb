class Brewery < ApplicationRecord
  has_many :beers, dependent: :delete_all
  has_many :ratings, through: :beers, dependent: :delete_all
  validates :name, presence: true
  validates :year, presence: true,  numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1800,
    less_than_or_equal_to: Date.today.year
  }
end
