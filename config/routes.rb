Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")

  get "static_pages/home", to: "static_pages#home"
  get "static_pages/about", to: "static_pages#about"
  get "static_pages/contact", to: "static_pages#contact"
  
  get 'contact', to: 'static_pages#contact'
  post 'contact', to: 'static_pages#send_contact'
  
  root "static_pages#home"
end
