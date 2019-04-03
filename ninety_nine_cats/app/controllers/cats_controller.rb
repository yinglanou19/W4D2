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

    end
    
    def create

    end

    def edit
        @cat = Cat.find(params[:id])
        render :edit

    end

    def update

    end

end