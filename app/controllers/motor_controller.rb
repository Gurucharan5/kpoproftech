class MotorController < ApplicationController
    def index 
        @motor = Motor.all
    end

    def new
        @motor = Motor.new
    end

    def motor
        

        @data = Motor.all
    end

    def create
        puts "----------------0"
        @motor = Motor.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@motor.inspect
        if @motor.save
            redirect_to admin_motor_path
        else
            render 'new'
        end
    end

    def destroy
        @motor = Motor.find(params[:id])
        @motor.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_motor_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end
