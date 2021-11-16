class Location < ApplicationRecord
  belongs_to :client
  belongs_to :film
end
