Rails.application.routes.draw do
  devise_for :users, controllers: {
     sessions: "users/sessions",
     registrations: "users/registrations"
  }


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users

#--------------shallow nesting---------------------

  # scope shallow_path: "sekret" do
  # resources :cinemas do
  #   resources :actors, shallow: true
  # end
  # end
#----------------individual routes------------------

  #resources :cinemas
  # get "/cinemas", to: "cinemas#index" #foo: "bar"
  # get "/cinemas/:id", to: "cinemas#show"
  # post "/movie", to: "cinemas#create"
  # put "/cinemas/:id", to: "cinemas#update"
  # delete "/cinemas/:id", to: "cinemas#destroy"

  #--------Routing Concerns---------------------------

  # concern :actorable do
  #   resources :actors
  # end

  # resources :cinemas, concerns: :actorable

 #------------singular resource--------------------------

  # resource :actor
  # resolve("actor") { [:actor] }

#------------member/collection routes---------------------
  resources :cinemas do
    get 'cast', on: :member
    post "new", on: :collection
  end

  resources :actors do
    member do
      get "earnings"
      put "modify"
    end
    post "new", on: :collection
  end

#------------------------resources----------------------------

  #resources :actors
  #resources :remuneration_histories
  get "/remunerations", to: "remuneration_histories#index"

#-------------namespace/scope----------------------------------

  namespace :admin do
    resources :cinemas
  end

  # scope module: "admin" do
  #   resources :cinemas
  # end

end
