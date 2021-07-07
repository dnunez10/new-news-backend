class ArticleReadingSerializer < ActiveModel::Serializer
  attributes :id, :references, :references
  belongs_to :article 
  belongs_to :reading_list
end
