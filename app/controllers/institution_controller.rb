class InstitutionController < ApplicationController
    def index 
        @institution = Institution.all
    end

    def new
        @institution = Institution.new
    end

    def institution
        

        @data = Institution.all
    end

    def create
        puts "----------------0"
        @institution = Institution.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@institution.inspect
        if @institution.save
            redirect_to admin_institution_path
        else
            render 'new'
        end
    end
    def destroy
        @institution = Institution.find(params[:id])
        @institution.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_institution_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end