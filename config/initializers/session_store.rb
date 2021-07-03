
if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_new-news', domain: 'localhost:3001'
  #ASK JASPER ABOUT THIS!!
else
  Rails.application.config.session_store :cookie_store, key: '_new-news'
end