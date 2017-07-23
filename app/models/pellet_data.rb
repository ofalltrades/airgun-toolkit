class PelletData
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  field :pellet_id, type: String
  field :muzzle_energy, type: Float
  field :muzzle_velocity, type: Float

  embedded_in :gun

  embeds_many :pellet
end
