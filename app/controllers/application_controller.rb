class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed 

    def not_destroyed
        render json:{}
    end
end
