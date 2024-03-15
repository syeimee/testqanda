Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "questions#index"
  resources :questions do
    resources :answers
  end


  root "top#top"
  
  get '/about', to: 'about#about'
  get '/blog', to: 'articles#blog'
  get '/tech', to: 'articles#tech'

  resources :contacts, only: [:new, :create] do
    collection do
        post 'confirm'
        post 'back'
        get 'done'
    end
  end
end
