class AddUrlsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :url, :string
    add_column :articles, :url_to_image, :string
  end
end
