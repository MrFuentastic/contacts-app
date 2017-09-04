Rails.application.routes.draw do

  get '/contacts_list' => 'contacts#index'
  get '/contacts_list/new' => 'contacts#new'
  post '/contacts_list' => 'contacts#create' 
  get '/contacts_list/:id' => 'contacts#show'

end
