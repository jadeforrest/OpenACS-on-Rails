ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  #map.connect 'forums', :controller => 'forums_forums', :as => 'forums'
  #map.resources :forums_forums, :as => 'forums', :has_many => :forums_messages
  #map.resources :forums_forums, :as => "forums" do |forums|
  #  forums.resources :forums_messages, :as => "messages"
  #end

  map.resources :forums, :controller => 'forums_forums'
  map.resources :messages, :controller => 'forums_messages'
  map.login  '/user/login', :controller => 'user', :action => 'login'
  map.logout  '/user/logout', :controller => 'user', :action => 'logout'
  map.logout  '/user/private', :controller => 'user', :action => 'private'
  map.authenticate  '/user/authenticate', :controller => 'user', :action => 'authenticate'
  map.resources :user, :controller => 'user'

  #map.resources :forums_forums, :as => 'forums', do |forums|
  #  forums.resources :forums_messages, :as => 'messages', :name_prefix => 'forum_'
  #end

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  #map.connect ':controller/:action/:id'
  #map.connect ':controller/:action/:id.:format'

  map.connect ':action', :controller => "static"
end
