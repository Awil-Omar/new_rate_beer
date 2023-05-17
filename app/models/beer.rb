class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :ratings

  validates :name, presence: true
  validates :style, presence: true





end
