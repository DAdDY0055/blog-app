class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contacts.save
  end
end
