class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :reading_lists
end
