class ProjectController < ApplicationController
    def index 
        @project = Project.all
    end

    def new
        @project = Project.new
    end

    def project
        

        @data = Project.all
    end

    def create
        puts "----------------0"
        @project = Project.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@project.inspect
        if @project.save
            redirect_to admin_project_path
        else
            render 'new'
        end
    end
    def destroy
        @project = Project.find(params[:id])
        @project.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_project_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end
