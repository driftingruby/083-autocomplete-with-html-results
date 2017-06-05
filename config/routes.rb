Rails.application.routes.draw do
  resources :products do
    collection do
      get :autocomplete
    end
  end
  root to: 'welcome#index'
end
