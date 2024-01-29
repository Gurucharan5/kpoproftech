class EducationController < ApplicationController
    def index 
        @education = Education.all
    end

    def new
        @education = Education.new
    end

    def education
        

        @data = Education.all
    end

    def create
        puts "----------------0"
        @education = Education.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@education.inspect
        if @education.save
            redirect_to admin_education_path
        else
            render 'new'
        end
    end
    def destroy
        @education = Education.find(params[:id])
        @education.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_education_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end