Rails.application.routes.draw do
  resources :torneios
  resources :inscricaos
  resources :usuarios
  resources :permissaos
  root "torneios#index" # Página inicial
end
