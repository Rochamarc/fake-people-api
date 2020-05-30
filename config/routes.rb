Rails.application.routes.draw do

  resources :nome_aleatorio do
    collection do 
       match 'category/:nacionalidade', to: 'nome_aleatorio#category', via: :get
     end
  end

  # match 'nome_aleatorio/:nacionalidade', to: 'nome_aleatorio#category', via: :get
  
  resources :sobrenomes do 
    collection do 
      get 'category'
    end
  end
  
  resources :nome_proprios do 
    collection do
      get 'category'
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
