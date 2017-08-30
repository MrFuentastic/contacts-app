class ContactsController < ApplicationController
  def one_contact_action
    @contact = Contact.first
    render 'one_contact.html.erb'
  end

  def contacts_list_action
    @contacts = Contact.all
    render 'contacts_list.html.erb'
  end
end
