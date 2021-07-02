class Article < ApplicationRecord
    has_many :comments
    has_many :article_readings
    has_many :users, through: :comments
end
