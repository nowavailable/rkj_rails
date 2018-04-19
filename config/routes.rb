Rails.application.routes.draw do
  resources :change_email_requests
  resources :joining_requests
  resources :users
  resources :mentors

  namespace :api, {format: "json"} do
    resources :questions, except: [:new]
    resources :answers, only: [:create,:update,:destroy]
    resources :users, only: [:show]
  end
  namespace "admin" do
    resources :users
    resources :mentors
    resources :questions
    resources :answers
    resources :question_categories
  end

  get 'login', to: 'logins#login'
  get 'after_login', to: 'logins#after_login'

  # root 'top#index'
 end
