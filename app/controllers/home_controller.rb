class HomeController < ApplicationController
    def index
        @transports = Transport.all
    end

    def calculateCo2
        transport = Transport.find(params[:transport])

        @co2 = transport.co2 * params[:distance].to_i

        render :calculate_co2, status: :ok
    end
end
