class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :reading_lists
    has_many :article_readings, through: :reading_lists

    validates_presence_of :username
    validates_uniqueness_of :username
    validates_presence_of :password
end
