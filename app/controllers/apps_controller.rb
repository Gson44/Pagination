class AppsController < ApplicationController
    APPS_PER_PAGE = 2

    def index
        @page = params.fetch(:page,0).to_i
        @apps = App.offset(@page * APPS_PER_PAGE).limit(APPS_PER_PAGE)
    end

    def show
        @app = Post.find(params[:id])
    end
end
