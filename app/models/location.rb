class Location < ApplicationRecord
  belongs_to :client
  has_many :Ribbon
end
