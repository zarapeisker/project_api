Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :reviews
  resources :experiences
  resources :subjects
  resources :app_countries
  resources :organizations
  resources :country_types
  resources :languages
  resources :sessions
  resources :students
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
