Rails.application.routes.draw do

  get 'reviews/create'
  resources :matches do
    collection do
      post :search_and_create_matches
    end
    resources :reviews, only: :create
  end

  resources :profiles, only: [:show, :edit, :update]
  resources :user_skills
  get '/learn', to: 'user_skills#learn', as: 'select_skills_to_learn'
  get '/teach', to: 'user_skills#teach', as: 'select_skills_to_teach'

  get '/dashboard', to: 'dashboard#show'
  get '/dashboard/settings'
  get '/dashboard/my_skills'
  get '/dashboard/my_matches'
  get 'profiles/show'

  get 'pages/skills'

  devise_for :users
  root to: 'pages#home'

  get 'pages/skills'

  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
