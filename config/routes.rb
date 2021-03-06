Time2ghost::Application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

  root :to => 'homepage#index'
  resources :bart_trips
  resources :users
  resources :stations, :only => [:index]
  resources :sessions, :only => [:create, :destroy, :new]
  get 'twiliotest', to: 'twilio#show'
  get '/profile', to: 'users#profile'
  match 'new-fake-trip' => 'bart_trips#new_fake', :as => 'new_fake_trip'
  match 'create-fake-trip' => 'bart_trips#create_fake', :as => 'create_fake_trip'
end
