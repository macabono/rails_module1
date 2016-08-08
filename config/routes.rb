Rails.application.routes.draw do
  get 'recipe_controller/index'

  root 'recipe_controller#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
