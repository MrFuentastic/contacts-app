Rails.application.routes.draw do
  get '/' => 'contacts#index'
  get '/contacts_list' => 'contacts#index'
  get '/contacts_list/new' => 'contacts#new'
  post '/contacts_list' => 'contacts#create' 
  get '/contacts_list/:id' => 'contacts#show'
  get '/contacts_list/:id/edit' => 'contacts#edit'
  patch '/contacts_list/:id' => 'contacts#update'
  delete '/contacts_list/:id' => 'contacts#destroy'

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
