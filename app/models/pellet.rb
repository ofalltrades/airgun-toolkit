class Pellet
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  field :make, type: String
  field :model, type: String
  field :caliber, type: Float
  field :grain, type: Float
end
