class Gun
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  field :make, type: String
  field :model, type: String
  field :caliber, type: Float

  embedded_in :user

  embeds_many :ballistic_datas
end
