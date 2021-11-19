class Location < ApplicationRecord
  belongs_to :client
  has_one :IdFilm
  has_many :films, through: :IdFilm
  
  validates :devolved_date, :client_id, :film_id, presence: true
  validates :client_id, uniqueness: true
end
