class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :source, :author, :content
  belongs_to :reading_list
end
