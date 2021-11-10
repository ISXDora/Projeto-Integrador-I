class Film < ApplicationRecord
    has_one :cast
    validates :title, :category, :available, presence: true
end
