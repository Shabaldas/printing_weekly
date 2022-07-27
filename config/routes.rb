Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)

  root 'home#home'

  get 'home', to: 'home#home'

  # resources :blog_posts, only: %i[index show]
end
