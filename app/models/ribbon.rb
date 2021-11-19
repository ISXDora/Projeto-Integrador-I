class Ribbon < ApplicationRecord
  belongs_to :film

  validates :film_id, presence: true
end
