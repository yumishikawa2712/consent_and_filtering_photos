Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions:      'users/sessions',
    passwords:     'users/passwords'
  }
  devise_for :customers, controllers: {
    registrations: 'customers/registrations',
    sessions:      'customers/sessions',
    passwords:     'customers/passwords'
  }

  namespace :users do
    resources :targets
  end

  namespace :customers do
    resources :targets
  end

  root "static_pages#top"
end
