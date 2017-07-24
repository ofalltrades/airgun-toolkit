class Pellet
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic

  field :first_name, type: String
  field :last_name, type: String
  field :user_name, type: String

  embeds_many :guns
end
