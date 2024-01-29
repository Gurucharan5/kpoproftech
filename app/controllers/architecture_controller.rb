class ArchitectureController < ApplicationController
    def index 
        @architecture = Architecture.all
    end

    def new
        @architecture = Architecture.new
    end

    def architecture
        

        @data = Architecture.all
    end

    def create
        puts "----------------0"
        @architecture = Architecture.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@architecture.inspect
        if @architecture.save
            redirect_to admin_architecture_path
        else
            render 'new'
        end
    end
    def destroy
        @architecture = Architecture.find(params[:id])
        @architecture.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_architecture_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end
