Rails.application.routes.draw do

	match '*any' => 'application#options', :via => [:options]
	  
	  # mount_devise_token_auth_for 'User', at: 'auth'

	resources :languages, only: [:index]  do
	  resources :teachers, only: [:index], controller: 'language_teachers'
	end
	resources :teachers, only: [:index]

	resources :app_countries, only: [:index]  do
	  resources :teachers, only: [:index], controller: 'country_teachers'
	end

	resources :subjects, only: [:index]  do
	  resources :teachers, only: [:index], controller: 'subject_teachers'
	  resources :students, only: [:index], controller: 'subject_students'
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end