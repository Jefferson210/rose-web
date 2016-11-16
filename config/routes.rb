Rails.application.routes.draw do

    #establecemos el controlador registrations personalizado para usarlo en Devise
    devise_for :users
    resources :children

    resources :sowings

    resources :crossings
    #    get "/crossings/hola/:father" => 'crossings#hola'
    #    match 'crossings/searchPicture/:father' => 'crossings#searchPicture', via: [:get, :post]

    resources :colors

    resources :genetic_banks 
    #    get '/genetic_banks/:id/search' => 'genetic_banks#search'


    get '/welcome' => 'example#index'

<<<<<<< HEAD
    get 'children/index'
    get 'sowings/index'
    get 'crossings/index'
    get 'colors/index'
    get 'genetic_banks/index'


     
=======
    devise_scope :user do
        get '/login' => 'devise/sessions#new'
        get '/logout' => 'devise/sessions#destroy'
    end
    resources :user, :controller => "user"
>>>>>>> 71e7d7a2bb2e2f8cabdd569c97b2e41b108eeab1
    # The priority is based upon order of creation: first created -> highest priority.
    # See how all your routes lay out with "rake routes".

    # You can have the root of your site routed with "root"
    # root 'welcome#index'

    # Example of regular route:
    #   get 'products/:id' => 'catalog#view'

    # Example of named route that can be invoked with purchase_url(id: product.id)
    #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

    # Example resource route (maps HTTP verbs to controller actions automatically):
    #   resources :products

    # Example resource route with options:
    #   resources :products do
    #     member do
    #       get 'short'
    #       post 'toggle'
    #     end
    #
    #     collection do
    #       get 'sold'
    #     end
    #   end

    # Example resource route with sub-resources:
    #   resources :products do
    #     resources :comments, :sales
    #     resource :seller
    #   end

    # Example resource route with more complex sub-resources:
    #   resources :products do
    #     resources :comments
    #     resources :sales do
    #       get 'recent', on: :collection
    #     end
    #   end

    # Example resource route with concerns:
    #   concern :toggleable do
    #     post 'toggle'
    #   end
    #   resources :posts, concerns: :toggleable
    #   resources :photos, concerns: :toggleable

    # Example resource route within a namespace:
    #   namespace :admin do
    #     # Directs /admin/products/* to Admin::ProductsController
    #     # (app/controllers/admin/products_controller.rb)
    #     resources :products
    #   end
end
