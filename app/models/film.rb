class Film < ApplicationRecord
    has_one :cast
    has_many :actors , through: :cast
    has_many :ribbons
    has_one :IdFilm

    
    
    validates :title, :category, :available, presence: true
    validates :title, uniqueness: true
end
