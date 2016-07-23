Rails.application.routes.draw do
  resources :talks, only: [:create]
end
