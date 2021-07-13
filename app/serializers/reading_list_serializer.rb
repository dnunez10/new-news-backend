class ReadingListSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id
  has_many :article_readings
  has_many :articles, through: :article_readings
end
