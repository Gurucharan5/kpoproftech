class ContactController < ApplicationController
    def index
    end

    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(name: params[:name],email: params[:email],subject: params[:subject],message: params[:message])
        if @contact.save
            redirect_to contact_path
        else
            render 'new'
        end
    end
    def contact
        

        @data = Contact.all
    end
end
