class ContactsController < ApplicationController
  def new
    @defaltUser = 2
    @contact = Contact.new 
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to @contact
    else
      render 'new'
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def index
    @contact = Contact.all
  end

  private
  def contact_params
    params.require(:contact).permit(:request_user_id, :shop_id, :menu_id,
      :comment, :fee, :request_receive_time)
    end
end
