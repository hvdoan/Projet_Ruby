class TransportController < ApplicationController
    def addTransport

    end

    def addTransport
        name            = params[:name]
        consumption     = params[:consumption]

        transport       = Transport.create(name: name, co2: consumption)

        redirect_to "/transport"
    end
end
