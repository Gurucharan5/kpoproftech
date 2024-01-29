class GuidelineController < ApplicationController
    def index 
        @guideline = Guideline.all
    end

    def new
        @guideline = Guideline.new
    end

    def guideline
        

        @data = Guideline.all
    end

    def create
        puts "----------------0"
        @guideline = Guideline.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@guideline.inspect
        if @guideline.save
            redirect_to admin_guideline_path
        else
            render 'new'
        end
    end
    def destroy
        @guideline = Guideline.find(params[:id])
        @guideline.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_guideline_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end
