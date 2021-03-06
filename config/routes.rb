Rails.application.routes.draw do
  get 'timetables/index'
  get 'timetables/index/update' => "timetables#update"
  get 'timetables/index/delete' => "timetables#delete"
  get 'posts/index'
  get 'password_resets/new'
  get 'password_resets/edit'
    get 'sessions/new'
    get 'users/new'
    root 'static_pages#home'
    get '/help',        to: 'static_pages#help'
    #get '/about',       to: 'static_pages#about'
    #get '/contact',     to: 'static_pages#contact'
    get '/signup',      to: 'users#new'
    post '/signup',     to: 'users#create'
    get '/login',       to: 'sessions#new'
    post '/login',      to: 'sessions#create'
    delete '/logout',   to: 'sessions#destroy'
    resources :users
    resources :account_activations, only: [:edit]
    resources :password_resets,     only: [:new, :create, :edit, :update]
  get 'lectures/show/:id' => 'lectures#show'
  get 'reviews/show/:id' => 'reviews#show'
  get 'reviews/show/:id/new' => 'reviews#new'
  post "reviews" => "reviews#create"
  delete "reviews.:id" => "reviews#destroy"
  get "reviews/:id/edit" => "reviews#edit" 

end
