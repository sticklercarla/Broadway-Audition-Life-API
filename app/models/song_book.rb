class SongBook < ApplicationRecord
  belongs_to :user
  has_many :songs
  has_many :styles, through: :songs
end
