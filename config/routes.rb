DCMis::Application.routes.draw do  
  
  

<<<<<<< HEAD
  
  

  

  

  devise_for :users

=======
>>>>>>> fe87f00a8436fe8680b5eb15c11aaf7da60113f9
  resources :entrances


  resources :achievements


  resources :daily_logs


  resources :projects


<<<<<<< HEAD
  
=======
  resources :users
>>>>>>> fe87f00a8436fe8680b5eb15c11aaf7da60113f9


  resources :events


  resources :profiles


<<<<<<< HEAD
  resources :dcs
=======
resources :dcs
>>>>>>> fe87f00a8436fe8680b5eb15c11aaf7da60113f9

  resources :dc_members
  resources :correspondences

  resources :about
  resources :contact
  resources :faq
  resources :profiles
  resources :open_source
  resources :current_dcmembers
  resources :events 
  resources :past_dcmembers
  resources :past_dcmembers
  resources :projects
  resources :events
  resources :daily_logs
  resources :achievements
  resources :entrances
  resources :infrastructures
  
  
  
# these routes are for showing users a login form, logging them in, and logging them out.
<<<<<<< HEAD

   devise_scope :user do
    get "/login" => "devise/sessions#new"
    delete "/logout" => "devise/sessions#destroy"
  end
=======
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
>>>>>>> fe87f00a8436fe8680b5eb15c11aaf7da60113f9



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
<<<<<<< HEAD
  root :to => 'dcs#index'
=======
  # root :to => 'welcome#index'
>>>>>>> fe87f00a8436fe8680b5eb15c11aaf7da60113f9

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
