Rails.application.routes.draw do
  resources :posts
  ## line 5 was previously -- get "welcome/about"
  ##This allows users to visit /about rather than /welcome/about
  get 'about' => 'welcome#about'

  root 'welcome#index'
 
end
