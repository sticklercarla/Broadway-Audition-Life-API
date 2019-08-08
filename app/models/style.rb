class Style < ApplicationRecord
    has_many :auditions
    has_many :songs
end
