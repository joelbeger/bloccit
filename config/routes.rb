Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end
  ## line 5 was previously -- get "welcome/about"
  ##This allows users to visit /about rather than /welcome/about
  get 'about' => 'welcome#about'

  root 'welcome#index'
 
end
