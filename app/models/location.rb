class Location < ApplicationRecord
  belongs_to :client
  has_one :basket
  has_many :ribbons, dependent: :destroy
  has_many :ribbons , through: :basket
  
  
  validates :devolved_date, :client_id, presence: true
  validates :client_id, uniqueness: true
end
