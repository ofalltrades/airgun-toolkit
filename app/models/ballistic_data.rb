class BallisticData
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  field :pellet_id, type: String
  field :muzzle_energy, type: Float
  field :muzzle_velocity, type: Float

  embedded_in :gun

  def self.pellet
    Pellet.find pellet_id
  end
end
