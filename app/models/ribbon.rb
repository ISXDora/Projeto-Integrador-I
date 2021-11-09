class Ribbon < ApplicationRecord
    has_one :film
    belongs_to :location
end
