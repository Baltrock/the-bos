Rails.application.routes.draw do
  resources :dashboard_forms
  resources :information_forms
  devise_for :admins, controllers: {registrations: "admins/registrations"}
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/dashboard_forms', to: 'dashboard_forms#index', as: :form_for_admin
  # Defines the root path route ("/")
  # root "articles#index"
  get "about", to: "pages#about", as: :about
  get 'users' => 'users#primary', as: :user_root
  get 'admins' => 'admin#primary', as: :admin_root
end
