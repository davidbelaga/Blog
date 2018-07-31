 Rails.application.routes.draw do
  get 'articles/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'articles' => 'articles#index'
  get 'articles/:id' => 'articles#show'
  post 'articles' => 'articles#create'
  patch 'articles/:id' => 'articles#update'
  delete 'articles/:id' => 'articles#destroy'
  post 'articles/:id' => 'articles#comment'
end
