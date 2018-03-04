Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  get "home/index"
  get 'home/about'

  namespace 'api' do
    namespace 'v1' do
      resources :users
    end
  end
end