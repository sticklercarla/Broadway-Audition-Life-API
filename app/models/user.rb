class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :password, confirmation: true

    has_many :auditions, dependent: :destroy
    has_many :songs, dependent: :destroy
    has_many :casting_offices, through: :auditions
    has_many :audition_locations, through: :auditions
    
end
