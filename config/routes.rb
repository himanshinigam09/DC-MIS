DCMis::Application.routes.draw do  
  
  
  


root :to => 'dcs#index'
  
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  


  
resources :departments


  resources :items
  

  

    
  get "password_resets/new"

  resources :publications


  resources :past_projects


  resources :current_projects



  


  

  resources :dcs


  resources :dc_members
  resources :correspondences
  resources :books
  resources :about
  resources :contact
  resources :faq
  resources :profiles
  resources :open_source
  resources :current_dcmembers
   resources :past_dcmembers
  
  resources :projects
  resources :events
  resources :daily_logs
  resources :achievements
  resources :entrances
  resources :infrastructures
  
  
  
# these routes are for showing users a login form, logging them in, and logging them out.

post 'login' => 'sessions#create'
get 'logout' => 'sessions#destroy'

get 'signup'  => 'users#new'
get 'login'  => 'sessions#new' 
resources :users

resources :sessions

get 'show1/:id' => "infrastructures#show1"
get 'show2/:id' => "infrastructures#show2"
delete 'destroy1/:id' => "infrastructures#destroy1"

delete 'destroy2/:id' => "infrastructures#destroy2"



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

  

  # root :to => 'welcome#index'


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
