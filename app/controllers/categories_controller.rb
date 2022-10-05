class CategoriesController < ApplicationController
    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            flash.keep[:notice] = "Category was successfully created"
            redirect_to @category
        else
            render :new, status: :unprocessable_entity
        end
    end

    def index
        
    end

    def show
        @category = Category.find(params[:id])
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private 

    def category_params
        params.require(:category).permit(:name)
    end

end