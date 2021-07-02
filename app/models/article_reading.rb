class ArticleReading < ApplicationRecord
    belongs_to :reading_list 
    belongs_to :article
end
