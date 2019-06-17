Rails.application.routes.draw do
  get 'plan/member'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plan do
    get 'members', on: :member
  end
end
