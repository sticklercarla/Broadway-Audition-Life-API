class Song < ApplicationRecord
  belongs_to :style
  belongs_to :user
  has_many :auditions
  
end
