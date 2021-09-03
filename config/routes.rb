Rails.application.routes.draw do
  devise_for :users
  root to: 'quizrooms#index'

  resources :quizrooms, only: [ :show ]
end
