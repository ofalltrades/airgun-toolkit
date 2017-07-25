class BallisticData
  include Mongoid::Document

  field :pellet_id, type: String
  field :muzzle_energy, type: Float
  field :muzzle_velocity, type: Float

  validates_presence_of :pellet_id

  embedded_in :gun

  def pellet
    Pellet.find pellet_id
  end
end
