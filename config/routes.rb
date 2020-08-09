Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'apps#index', as: 'apps'

  namespace 'api' do
    resources :apps
  end
end
