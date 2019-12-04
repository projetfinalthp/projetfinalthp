Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :patients
  devise_for :practionners
  resources :patients
 
end
