class Song < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :auditions
  
end
