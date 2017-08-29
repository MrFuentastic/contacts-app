Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/one_contact' => 'contacts#one_contact_action'
  get '/contacts_list' => 'contacts#contacts_list_action'
end
