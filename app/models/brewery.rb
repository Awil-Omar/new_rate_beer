class Brewery < ApplicationRecord
  has_many :beers
  validates :name, :year , presence: true
end
