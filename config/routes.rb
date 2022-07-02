Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    root "home#index"

    get "/", to: "home#index"

    get "/home", to: "home#index"

    post "/home", to: "home#calculateCo2"

    get "/transport", to: "transport#transport"

    post "/transport", to: "transport#addTransport"
end
