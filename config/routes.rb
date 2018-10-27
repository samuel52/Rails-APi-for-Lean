Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
  	namespace 'v1' do
  		resources :people, only: [:index, :show, :create]
  		resources :posts, only: [:index, :show, :create]
  		resources :sessions, only: [:create, :destroy]
  	end
  end
  	namespace 'v1' do
  		resources :sessions, only: [:index, :create, :destroy]
      resources :users, only: [:create]
  	end
    namespace 'v1' do
      resources :users, only: [:create]
    end
end
