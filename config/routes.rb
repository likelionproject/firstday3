Rails.application.routes.draw do
    
  devise_for :users
  root :to => 'culture#index'
  match ':controller(/:action(/:id))', :via => [:post, :get]
  
end
