class Ribbon < ApplicationRecord
  belongs_to :film
  has_many :baskets 
  has_many :locations, dependent: :destroy
  has_many :locations, through: :basket
  validates :film_id, presence: true
end
