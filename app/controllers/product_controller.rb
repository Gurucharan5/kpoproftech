class ProductController < ApplicationController
    def index 
        @product = Product.all
    end

    def new
        @product = Product.new
    end

    def product
        

        @data = Product.all
    end

    def create
        puts "----------------0"
        @product = Product.new(name: params[:name],image: params[:image])
        puts "----------------0"
        puts "----------------0"+@product.inspect
        if @product.save
            redirect_to admin_product_path
        else
            render 'new'
        end
    end
    def destroy
        @product = Product.find(params[:id])
        @product.destroy
    
        respond_to do |format|
          format.html { redirect_to admin_product_path, notice: 'successfully deleted.' }
          format.json { head :no_content }
        end
    end
end
