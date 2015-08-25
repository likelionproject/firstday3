Rails.application.routes.draw do
    
  root :to => 'culture#index'
  match ':controller(/:action(/:id))', :via => [:post, :get]
  
end
