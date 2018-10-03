Rails.application.routes.draw do
  resources :entrega_estampas
  resources :estampas
  resources :caixas
  resources :despesas
  resources :vendas
  resources :entregas
  resources :costuras
  resources :corte_modelos
  resources :cortes
  resources :modelos
  resources :debitos
  resources :pag_parcelas
  resources :compras
  resources :fornecedors
  root to: "caixas#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
