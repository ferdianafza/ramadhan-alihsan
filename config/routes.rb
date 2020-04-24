Rails.application.routes.draw do
  resources :report_ramadhans, :except => [:edit, :update, :delete]
  resources :majors
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :students, controllers: { sessions: 'students/sessions', registrations: 'students/registrations' }
  devise_scope :student do
    get 'sign_in', to: 'students/sessions#new'
    get '/students/sign_out' => 'students/sessions#destroy'
  end
  resources :homes
  get "/homes/myreports" => "/homes/myreports"
  get "/homes/profile" => "/homes/profile"
  get "/profile/index" => "/profile/index"
  root to: 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
