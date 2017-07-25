class User
  include Mongoid::Document

  field :first_name, type: String
  field :last_name, type: String
  field :username, type: String

  validates_presence_of :username

  has_many :guns
end
