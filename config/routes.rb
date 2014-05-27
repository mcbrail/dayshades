Dayshades::Application.routes.draw do

  get "users/index"

  get "users/new"

  get "users/edit"

  get "users/show"

  get "customers/index"

  get "customers/new"

  get "customers/show"

  get "customers/edit"

  get "administrators/index"

  get "administrators/new"

  get "administrators/edit"

  get "administrators/show"

  get "administrator/index"

  get "administrator/new"

  get "administrator/edit"

  get "administrator/show"

  get "dashboard/index"

  get "products/index"

  get "products/new"

  get "products/edit"

  get "products/show"

  resources :administrators
  resources :categories
  resources :products
  resources  :dashboard
  resources :customers
  resources :users
  
  get "categories/edit"

  get "categories/new"

  get "categories/show"

  get "categories/index"

  get "public/index"

  get "public/list"

  get "public/show"

  get "public/contact"

  get "public/about"

  get "public/instructions"

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
  root :to => 'public#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
