class Brewery < ApplicationRecord
  has_many :beers
  has_many :ratings, through: :beers
  validates :name, :year , presence: true
end
