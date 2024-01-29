class PlantController < ApplicationController
    def index 
        @plant = Plant.all
    end

    def new
        @plant = Plant.new
    end

    def plant
        

        @data = Plant.all
    end

    def create
        puts "----------------0"
        @plant = Plant.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@plant.inspect
        if @plant.save
            redirect_to admin_plant_path
        else
            render 'new'
        end
    end
    def destroy
        @plant = Plant.find(params[:id])
        @plant.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_plant_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end
