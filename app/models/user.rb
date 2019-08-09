class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true
    validates :password, confirmation: true

    has_many :auditions, dependent: :destroy
    has_many :song_books
    has_many :songs, through: :song_books
    has_many :songs, through: :auditions
    has_many :casting_offices, through: :auditions
    has_many :audition_locations, through: :auditions
    has_many :styles, through: :auditions
    
end
