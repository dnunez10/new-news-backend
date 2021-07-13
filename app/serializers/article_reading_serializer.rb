class ArticleReadingSerializer < ActiveModel::Serializer
  attributes :id, :reading_list_id, :article_id
  belongs_to :article 
  belongs_to :reading_list
end
