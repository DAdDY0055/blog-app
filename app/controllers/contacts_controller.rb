class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      Contact.create(name: params[:contact][:name], email: params[:contact][:email], content: params[:contact][:content])
      redirect_to new_contact_path, notice: "お問い合わせを投稿しました!"
    else
      render 'new'
    end
  end
  
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end