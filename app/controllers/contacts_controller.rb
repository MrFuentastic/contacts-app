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
    flash[:success]
    redirect_to "/contacts_list/#{contact.id}"
  end

  def show
    @contact = Contact.find(params[:id])
  end 

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    flash[:info]
    contact.assign_attributes(
                              name: params[:name],
                              phone_number: params[:phone_number],
                              email: params[:email],
                              address: params[:address]
                              )

    contact.save

    redirect_to "/contacts_list/#{contact.id}"
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    flash[:danger]
    redirect_to "/"
  end 
end
