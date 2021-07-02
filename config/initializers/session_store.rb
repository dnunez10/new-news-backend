
if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_new-news', domain: 'new-news-api.herokuapp.com'
  #ASK JASPER ABOUT THIS!!
else
  Rails.application.config.session_store :cookie_store, key: '_new-news'
end