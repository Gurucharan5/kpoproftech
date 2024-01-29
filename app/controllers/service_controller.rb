class ServiceController < ApplicationController
    def index 
        @service = Service.all
    end

    def new
        @service = Service.new
    end

    def service
        

        @data = Service.all
    end

    def create
        puts "----------------0"
        @service = Service.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@service.inspect
        if @service.save
            redirect_to admin_service_path
        else
            render 'new'
        end
    end
    def destroy
        @service = Service.find(params[:id])
        @service.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_service_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end
