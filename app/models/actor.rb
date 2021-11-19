class Actor < ApplicationRecord
    has_many :cast
    validates :name, presence: true, uniqueness: true
end
