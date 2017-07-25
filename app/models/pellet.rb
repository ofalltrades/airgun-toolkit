class Pellet
  include Mongoid::Document

  field :make, type: String
  field :model, type: String
  field :caliber, type: Float
  field :grain, type: Float

  validates_presence_of :make, :model, :caliber, :grain
end
