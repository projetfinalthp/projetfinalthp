Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :patients
  devise_for :practionners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
end
