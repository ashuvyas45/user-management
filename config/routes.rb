Rails.application.routes.draw do

  namespace :v1 do
    resources :users, only: %i[create index]
    resources :permissions, only: %i[create index]
    resources :user_permissions, only: %i[create]
  end
end
