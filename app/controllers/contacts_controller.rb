class ContactsController < ApplicationController
  
  def index
    search_term = params[:search]

    if search_term
      @contacts = Contact.where("first_name iLIKE ? OR last_name iLIKE ? OR email iLIKE ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
    else
      @contacts = Contact.all
    end
  end  

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(
                            first_name: params[:first_name],
                            middle_name: params[:middle_name],
                            last_name: params[:last_name],
                            phone_number: params[:phone_number],
                            email: params[:email],
                            address: params[:address],
                            bio: params[:bio]
                            )
    if @contact.save
      flash[:success] = "Contact successfully saved"
      redirect_to "/contacts_list/#{contact.id}"
    else
      @errors = @contact.errors.full_messages
      flash[:danger] = "Contact was not saved, try again."
      render "new.html.erb"
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end 

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.assign_attributes(
                              first_name: params[:first_name],
                              middle_name: params[:middle_name],
                              last_name: params[:last_name],
                              phone_number: params[:phone_number],
                              email: params[:email],
                              address: params[:address],
                              bio: params[:bio]
                              )

    if @contact.save
      flaash[:info] = "Contact successfully edited."
      redirect_to "/contacts_list/#{contact.id}"
    else
      @errors = @contact.errors.full_messages
      render "edit.html.erb"
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    flash[:danger]
    redirect_to "/"
  end 
end
