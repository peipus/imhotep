Imhotep::Application.routes.draw do
  
  devise_for :users

  resources :stes_es

  get "edit/index"



  resources :users

  resources :zals

  resources :dvers

  resources :wins

  resources :parts

  resources :builds

  resources :acts

  resources :abouts

  resources :contacts

  resources :sites

  resources :edit

   match "/activities" => "site#activities"

  match "/partners" => "site#partners"

  match "/ccontact" => "site#contacts"

  match "/building" => "site#building"

  match "/windows" => "site#windows"

  match "/doors" => "site#doors"

  match "/shade" => "site#shade"


  get "site/about"

  get "site/activities"

  get "site/partners"

  get "site/contacts"

  get "site/building"

  get "site/windows"

  get "site/doors"

  get "site/shade"

  get "site/new_view"
  
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
  root :to => "site#about"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
