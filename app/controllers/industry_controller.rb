class IndustryController < ApplicationController
    def index 
        @industry = Industry.all
    end

    def new
        @industry = Industry.new
    end

    def industry
        

        @data = Industry.all
    end

    def create
        puts "----------------0"
        @industry = Industry.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@industry.inspect
        if @industry.save
            redirect_to admin_industry_path
        else
            render 'new'
        end
    end

    def destroy
        @industry = Industry.find(params[:id])
        @industry.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_industry_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end