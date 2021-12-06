class Film < ApplicationRecord
    has_one :cast
    has_many :actors , through: :cast
    has_many :ribbons
    belongs_to :category
    
    
    validates :title, presence: true
    validates :title, uniqueness: true
end
