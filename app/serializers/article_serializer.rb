class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :source, :author, :content
end
