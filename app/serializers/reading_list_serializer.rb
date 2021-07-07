class ReadingListSerializer < ActiveModel::Serializer
  attributes :id, :name, :references
  has_many :articles
  belongs_to :user
end
