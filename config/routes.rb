Rubyler::Application.routes.draw do
  resources :posts
  root :to => "posts#index"
  
  devise_for :users
  devise_scope :user do
    get "signin", :to => "devise/sessions#new"
    get "signout", :to => "devise/sessions#destroy"
    get "signup", :to => "devise/registrations#new"
  end
  
end
