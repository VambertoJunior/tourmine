Rails.application.routes.draw do
  resources :torneios
  resources :inscricoes
  resources :usuarios
  resources :permissoes
  root "torneios#index" # Página inicial
end
