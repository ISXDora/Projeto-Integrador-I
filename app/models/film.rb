class Film < ApplicationRecord
    has_one :cast
    has_many :actors , through: :cast
    validates :title, :category, :available, presence: true
end
