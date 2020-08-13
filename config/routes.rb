Rails.application.routes.draw do

  resources :last_names
  resources :first_names
  resources :nome_aleatorio do
    collection do 
      match 'category/:nacionalidade', to: 'nome_aleatorio#category', via: :get
     end
  end

  # match 'nome_aleatorio/:nacionalidade', to: 'nome_aleatorio#category', via: :get
  
  resources :sobrenomes do 
    collection do 
      match 'category/:nacionalidade', to: 'sobrenomes#category', via: :get
    end
  end
  
  resources :nome_proprios do 
    collection do
      match 'category/:nacionalidade', to: 'nome_proprios#category', via: :get
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
