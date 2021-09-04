Rails.application.routes.draw do
  devise_for :users
  root to: 'quizrooms#index'

  resources :quizrooms, only: [ :show ] do
    resources :questions, only: [ :show ]
    resources :answers, only: [ :create ]
  end
end
