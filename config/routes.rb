Rails.application.routes.draw do

  devise_for :users
root 'articles#new'
get 'статья_номер_:id/редактирование' => 'articles#edit', as: 'edit_chpu'
get 'главная' => 'articles#index', as: 'new_chpu'
get 'статья_номер_:id' => 'articles#show', as: 'id_statya_chpu'
get 'новая_статья' => 'articles#new', as: 'novaya_statya_chpu'
get 'persons/profile', as: 'user_root'
  resources :articles do
resources :comments

end
end
