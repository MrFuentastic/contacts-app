class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end  

  def new

  end

  def create
    contact = Contact.new(
                            name: params[:name],
                            phone_number: params[:phone_number],
                            email: params[:email],
                            address: params[:address]
                            )
    contact.save
  end

  def show
    @contact = Contact.find(params[:id])
  end  
end
