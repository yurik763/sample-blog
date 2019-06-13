Rails.application.routes.draw do
  get 'home/index'

  resource :about, only: [:new, :create], path_names: { :new => ''}
  resource :terms, only: [:new, :create], path_names: { :new => ''}
  resource :contacts, only: [:new, :create], path_names: { :new => ''}
  resources :articles, only: [:new, :create], path_names: { :new => ''}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
