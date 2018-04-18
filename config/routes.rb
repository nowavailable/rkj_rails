Rails.application.routes.draw do
  resources :question_categories
  resources :change_email_requests
  resources :joining_requests
  resources :user_specializeds
  resources :questions
  resources :answers
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace "admin" do
    resources :users
    resources :user_specializeds
    resources :questions
    resources :answers
  end

  get 'login', to: 'logins#login'
  get 'after_login', to: 'logins#after_login'

  # root 'top#index'
 end
