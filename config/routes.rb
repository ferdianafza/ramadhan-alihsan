Rails.application.routes.draw do
  resources :report_ramadhans
  resources :majors
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :students, controllers: { sessions: 'students/sessions' }
  devise_scope :student do
    get 'sign_in', to: 'students/sessions#new'
    get '/students/sign_out' => 'students/sessions#destroy'
  end
  resources :homes
  root to: 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
