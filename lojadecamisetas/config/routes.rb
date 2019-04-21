Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "[o nome que queremos para a URL]" => "[nome do Controller]#[nome da página]"
  # get "produtos" => "produtos#index"
  # get "produtos/new" => "produtos#new"
  # get "produtos/:id/remove" => "produtos#destroy", as: :produto
  # post "produtos" => "produtos#create"
  resources :produtos, only: [:new, :create, :destroy]

  get "usuarios" => "usuarios#index"
  root "produtos#index"
end
