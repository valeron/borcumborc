Borcumborc::Application.routes.draw do
  get "users/new"

  match '/signup',  to: 'users#new'

  match '/about',   to: 'static_pages#about'
  match '/login',    to: 'static_pages#login'

  
  root to: 'static_pages#home'
end
