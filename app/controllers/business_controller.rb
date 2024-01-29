class BusinessController < ApplicationController
    def index 
        @business = Business.all
    end

    def new
        @business = Business.new
    end

    def business
        

        @data = Business.all
    end

    def create
        puts "----------------0"
        @business = Business.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@business.inspect
        if @business.save
            redirect_to admin_business_path
        else
            render 'new'
        end
    end

    def destroy
        @business = Business.find(params[:id])
        @business.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_business_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end
