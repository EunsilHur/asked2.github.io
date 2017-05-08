Rails.application.routes.draw do
  
  get 'home/index'
  post '/write' => 'home#write'
  
  get '/update/:p_id' => 'home#update'
  post '/update/:p_id' => 'home#update_post'
  
  get '/destroy/:p_id' => 'home#destroy'
  
  root 'home#index'

end