Rails.application.routes.draw do
  get 'welcome/index'

  resources :posts do
    resources :tags
  end
   root 'welcome#index'
end
