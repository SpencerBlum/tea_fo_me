

class TeasController < ApplicationController
    def index
        @teas = Tea.all
    end

    def show
        @tea = Tea.find(params[:id])
    end

    def new
        
        @tea = Tea.new
        # byebug
    end

    def create
        @tea = Tea.new(tea_params)
        if @tea.valid?
            @tea.save
            redirect_to tea_path(@tea)
        else
        flash[:message] ="yo tea ain't right"
        redirect_to new_tea_path
        end

    end

    def edit
        @tea = Tea.find(params[:id])
    end

    def update
        @tea = Tea.find(params[:id])
        @tea.update(tea_params)
        redirect_to tea_path(@tea)
    end

    def destroy
        @tea = Tea.find(params[:id])
        @tea.destroy
        redirect_to teas_path
    end

    private 
    def tea_params
        params.require(:tea).permit(:name, :price, :ingredient_id)
    end
end