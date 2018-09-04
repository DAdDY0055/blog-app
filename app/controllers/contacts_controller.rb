class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    Contact.create(name: params[:contact][:name], email: params[:contact][:email], content: params[:contact][:content])
    redirect_to new_contact_path
  end
end
