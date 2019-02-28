class EmailsController < ApplicationController
  def index
  	@emails = Email.all

  	@body_arr = []
  	@emails.each do |email|
  		@body_arr << email.body 
  	end
  end

  def update

  	@email = Email.find(params[:id])

    @email.update(read: true)
      respond_to do |format|
        format.html { redirect_to emails_path }
        format.js
      end
    

  end


  def destroy
  	@email = Email.find(params[:id])

    @email.destroy
      respond_to do |format|
        format.html { redirect_to emails_path }
        format.js
      end

  end
end
