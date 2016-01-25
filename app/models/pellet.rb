class Pellet < ActiveRecord::Base
  has_many :groupings
  belongs_to :gun
end