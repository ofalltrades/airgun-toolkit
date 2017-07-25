class Gun
  include Mongoid::Document

  field :make, type: String
  field :model, type: String
  field :caliber, type: Float

  validates_presence_of :caliber

  belongs_to :user

  embeds_many :ballistic_datas
  accepts_nested_attributes_for :ballistic_datas
end
