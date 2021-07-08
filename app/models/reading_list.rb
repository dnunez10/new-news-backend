class ReadingList < ApplicationRecord
    belongs_to :user 
    has_many :article_readings
    has_many :articles, through: :article_readings
end
