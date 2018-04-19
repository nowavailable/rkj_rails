Rails.application.routes.draw do
  resources :question_categories
  resources :change_email_requests
  resources :joining_requests
  resources :user_specializeds
  resources :users

  namespace :api, {format: "json"} do
    resources :questions, except: [:new]
    resources :answers, only: [:create,:update,:destroy]
    resources :users, only: [:show]
  end
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
