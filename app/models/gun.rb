class Pellet
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  field :make, type: String
  field :model, type: Strine
  field :caliber, type: Float

  embeds_many :pellet_data
end
