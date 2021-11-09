class Film < ApplicationRecord
  belongs_to :ribbon
  has_one :cast

  validates :name, :category, presence: true
end
