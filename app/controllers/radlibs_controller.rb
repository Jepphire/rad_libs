class RadlibsController < ApplicationController

    def show
        @radlib = Radlib.find(params[:id])
    end

    def index
        @radlibs = Radlib.all
    end

end
