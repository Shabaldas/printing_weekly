Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    
    # passwords: 'users/passwords',
    # sessions: 'users/sessions',
    # invitations: 'users/invitations'
  }
  ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#home'
  resources :challenges
  resources :challenge_members

  get 'home', to: 'home#home'

  

  # resources :blog_posts, only: %i[index show]
end
