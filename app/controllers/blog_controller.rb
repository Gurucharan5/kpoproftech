class BlogController < ApplicationController

    def index
        @blog = Blog.all
    end

    def new
        @blog = Blog.new
    end
    def create
        @blog = Blog.new(title: params[:title],image: params[:image],content: params[:content])
        if @blog.save
          redirect_to admin_blog_path
        else
          render 'blog'
        end
    end

    def blog
        @data = Blog.all
    end

    def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_blog_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
    
end