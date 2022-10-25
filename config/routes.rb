Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  resources :dashboard_forms
  resources :information_forms
  devise_for :admins, controllers: {registrations: "admins/registrations"}
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get '/dashboard_forms', to: 'dashboard_forms#index', as: :form_for_admin
  get '/information_forms', to: 'information_forms#index', as: :form_for_user
  # Defines the root path route ("/")
  get "about", to: "pages#about", as: :about
  get "show_admin_users", to: 'pages#show_admin_users', as: :show_admin_users
  get 'users' => 'users#primary', as: :user_root
  get 'admins' => 'dashboard_forms#index', as: :admin_root
end
