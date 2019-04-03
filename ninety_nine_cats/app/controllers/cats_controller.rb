class CatsController < ApplicationController

    def index 
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find_by(id:params[:id])
        if @cat
            render :show
        else
            render json: @cat.errors.full_messages,  status: 418
        end
    end

    def new
        @cat = Cat.new
        render :new
    end
    
    def create
        @cat = Cat.create(cat_params)
        redirect_to cat_url(@cat)
    end

    def edit
        @cat = Cat.find(params[:id])
        render :edit

    end

    def update
        @cat = Cat.update(cat_params)
        redirect_to cat_url(@cat)
    end

    private

    def cat_params
        params.require(:cat).permit(:birth_date, :color, :name, :sex, :description )
    end

end