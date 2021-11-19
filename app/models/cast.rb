class Cast < ApplicationRecord
  belongs_to :film
  belongs_to :actor

  validates :film_id, :actor_id, presence: true
end
