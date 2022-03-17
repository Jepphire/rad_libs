class RadlibsController < ApplicationController

    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def show
    end

    def index
        @radlibs = Radlib.all
    end

    def new
        @radlib = Radlib.new()
    end

    def edit
    end

    def create
        @radlib = Radlib.new(radlib_perams)
        if @radlib.save
            flash[:notice] = "Your Radlib has been saved!"
            redirect_to @radlib
        else
            render 'new'
        end
    end

    def update
        if @radlib.update(radlib_perams)
            flash[:notice] = "Your Radlib has been updated!"
            redirect_to @radlib
        else
            render 'edit'
        end
    end

    def destroy
        @radlib.destroy
        redirect_to radlibs_path
    end

    private

    def set_article
        @radlib = Radlib.find(params[:id])
    end

    def radlib_perams
        params.require(:radlib).permit(:title, :content)
    end
end
