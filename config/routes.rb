Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plan do
    get 'members', on: :member
  end

  post '/get_api_key', to: 'users#get_api_key'
end
