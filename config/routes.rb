Revolvo::Application.routes.draw do
  resources :feed_items
  root :to => 'FeedItems#index'

end
