Rails.application.routes.draw do
  resources :departamentos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "produtos", to: "produtos#index"
  #
  # delete "produtos/:id", to: "produtos#destroy", as: :produto
  # post "produtos", to: "produtos#create"
  # get "produtos/new", to: "produtos#new"
  get "produtos/busca", to: "produtos#busca", as: :busca_produto
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]
  root to: "produtos#index"
end
