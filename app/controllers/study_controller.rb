class StudyController < ApplicationController
    def index 
        @study = Study.all
    end

    def new
        @study = Study.new
    end

    def study
        

        @data = Study.all
    end

    def create
        puts "----------------0"
        @study = Study.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@study.inspect
        if @study.save
            redirect_to admin_study_path
        else
            render 'new'
        end
    end
    def destroy
        @study = Study.find(params[:id])
        @study.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_study_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end
