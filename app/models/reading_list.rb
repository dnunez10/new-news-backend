class ReadingList < ApplicationRecord
    belongs_to :user 
    has_many :article_readings
end
