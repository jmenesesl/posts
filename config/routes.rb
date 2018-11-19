Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'publicacions/list'
  post 'publicacions/edit'
  get 'publicacions/list_esp'
  get 'publicacions/list_cat'
  get 'publicacions/list_all'
end
