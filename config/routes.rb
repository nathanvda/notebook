Notebook::Application.routes.draw do

  resources :books do
    collection do
      put :update_attribute_on_the_spot
    end
    resources :notes, :only => [:create]
  end

  put 'notes/update'
  get 'notes/show', :as => :note

  devise_for :users

  get "home/index"

  get "home/about", :as => :about

  root :to => 'books#index'

end
