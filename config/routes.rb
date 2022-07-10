Rails.application.routes.draw do
  resources :oferta_laborals
  get 'bolsa_empleo/index'
  resources :empresas



  devise_for :user_personas
  devise_for :user_empresas

  root 'bolsa_empleo#index'

  authenticated :user_empresas do
    root to: "pages#user_dashboard", as: :authenticated_root
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
