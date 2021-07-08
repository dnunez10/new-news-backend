class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :source, :author, :content, :url, :url_to_image
  # belongs_to :reading_list
  has_many :comments
    has_many :article_readings
    has_many :users, through: :comments
    has_many :reading_lists, through: :article_readings
end
