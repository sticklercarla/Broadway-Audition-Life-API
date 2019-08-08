class Audition < ApplicationRecord
  belongs_to :user
  belongs_to :song
  belongs_to :casting_office
  belongs_to :style
  belongs_to :audition_location
end
