require 'rest-client'

# NEWS_API_KEY = ENV['news_api_key']
def news_api_key
    ENV["NEWS_API_KEY"]
end

def news_dataset
    api_data = { key: news_api_key }
    news = RestClient.get("https://newsapi.org/v2/everything?q=a&apiKey=#{api_data[:key]}")
    news_array = JSON.parse(news)["articles"]
    news_array.each do |a|
        Article.create(title: a["title"], author: a["author"], description: a["description"], source: a["source"], content: a["content"], url: a["url"], url_to_image: a["url_to_image"])
    end
end
news_dataset()
# byebug

    # response = RestClient.get 'https://newsapi.org/v2/everything?q=a&apiKey=NEWS_API_KEY'
    # byebug
    # json = JSON.parse response

    # if !json.nil?
    #     json["data"].map do |article|
    #         Article.create(title:)
    #     end
    # else
    # puts "error seeding"
    # end