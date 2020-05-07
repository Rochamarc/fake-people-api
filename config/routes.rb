Rails.application.routes.draw do
  resources :sobrenomes
  resources :nome_proprios do 
    collection do
      get 'category'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end