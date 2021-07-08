class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :comments
  has_many :reading_lists
  has_many :article_readings, through: :reading_lists
end
