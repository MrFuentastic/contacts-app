class ContactsController < ApplicationController
  def one_contact_action
    @contact = Contact.first
    render 'one_contact.html.erb'
  end

  def contacts_list_action
    @contacts = Contact.all
    render 'contacts_list.html.erb'
  end

  def contact_form

  end

  def contact_submitted
    contact = Contact.new(
                            name: params[:name],
                            phone_number: params[:phone_number],
                            email: params[:email],
                            address: params[:address]
                            )
    contact.save
  end
end
