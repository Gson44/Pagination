class AppsController < ApplicationController
    

    def index
        start = params.fetch(:start,0).to_i
        last = params.fetch(:last,100).to_i
        max = params.fetch(:max,2).to_i
        by = params.fetch(:by, 'id').to_s
        order = params.fetch(:order, "ASC").to_s
        apps = App.offset(start * max).limit(max).order(by + " " + order)
        render json: {status: 'SUCCESS', message: 'Loaded Apps', range:apps}, status: :ok
    end

    def show
        app = App.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded App', range:app}, status: :ok
    end

    def create 
        app = App.net(app_params)

        if @app.save
            render json: {status: 'SUCCESS', message: 'Save App', range:app}, status: :ok
        else
            render json: {status: 'Error', message: 'App not saved', range:app.errors}, status: :unprocessable_entry
        end
    end

    def destroy
        app = App.find(params[:id])
        app.destroy
        render json: {status: 'SUCCESS', message: 'Deleted App', data:app}, status: :ok
        
    end

    def update 
        app = App.find(params[:id])
        if app.update_attributes(app_params)
            render json: {status: 'SUCCESS', message: 'Updated App', range:app}, status: :ok
        else
            render json: {status: 'Error', message: 'Loaded App', range:app.errors}, status: :unprocessable_entity
        end
    end

    private def app_params
        params.permit(:name)
    end
end

