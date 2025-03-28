class StaticPagesController < ApplicationController
  def home
  end

  def about 
  end

  def contact
  end
  
  def send_contact

    name = params[:name]
    email = params[:email]
    message = params[:message]

    flash[:notice] = "Thank you for your message, we will contact you soon."
    redirect_to contact_path
  end
end
