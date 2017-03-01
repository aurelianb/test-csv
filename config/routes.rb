Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :home
  resources :download do
    collection do
      get 'generated_csv'
    end
  end
end
