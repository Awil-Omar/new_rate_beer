class Beer < ApplicationRecord
  belongs_to :brewery

  has_many :ratings, dependent: :destroy

  validates :name, presence: true
  validates :style, presence: true

  def to_s
     "#{brewery.name} #{name}"
  end

end
