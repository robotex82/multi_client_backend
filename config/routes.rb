MultiClient::Backend::Engine.routes.draw do
  resources :clients

  resources :create_client_service, only: [:index] do
    get  :invoke, on: :collection
    post :call,   on: :collection
  end

  root to: 'home#index'
end