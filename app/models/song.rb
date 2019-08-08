class Song < ApplicationRecord
  belongs_to :style
  belongs_to :song_book
  has_many :auditions
  
end
