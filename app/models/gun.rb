class Gun < ActiveRecord::Base
  has_many :pellets
  belongs_to :user
end