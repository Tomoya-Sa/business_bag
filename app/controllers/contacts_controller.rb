class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    
    if @contact.save
      flash[:success] = '送信完了'
      redirect_to  '/'
      
    else
      flash[:danger] = '入力内容の確認をしてください'
      render :new
    end
    
  end
  
  private
  
  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
  
end
