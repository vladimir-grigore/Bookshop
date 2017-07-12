Rails.application.routes.draw do
  get 'genres/index'

  get 'genres/show'

  get 'books/index'

  get 'books/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/api' do
    
    scope '/books' do
      get '/' => 'books#index'
      scope '/:id' do
        get '/' => 'books#show'
      end
    end
    
    scope '/genres' do
      get '/' => 'genres#index'
      scope '/:id' do
        get '/' => 'genres#show'
      end
    end

  end
end
