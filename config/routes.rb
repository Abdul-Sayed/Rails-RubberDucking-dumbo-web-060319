Rails.application.routes.draw do
  # get 'ducks/index'
  # get 'ducks/show'
  # get 'ducks/new'
  # get 'ducks/edit'
  # get 'students/index'
  # get 'students/show'
  # get 'students/new'
  # get 'students/edit'

  resources :ducks
  resources :students

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
