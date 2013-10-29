class ContactController < ApplicationController

def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        UserMailer.contact(@contact).deliver
        format.html { redirect_to root_path, notice: 'Contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_params
  	params.require(:contact).permit(:name, :email, :content)
  end

end
