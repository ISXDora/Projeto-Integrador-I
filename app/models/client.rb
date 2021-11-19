class Client < ApplicationRecord
    has_one :location

    validates :name, :address, :phone, presence: true
    validates :phone, uniqueness: true
end
