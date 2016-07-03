Rails.application.routes.draw do

  devise_for :users
root 'articles#index'
get 'persons/profile', as: 'user_root'
  resources :articles do
resources :comments

end
end
