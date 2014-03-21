DemoApp2::Application.routes.draw do
  devise_for :authors
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :models
  get "start/index"
  resources :articles

  devise_for :users
  get "store/index"
  get "store/show"
  get "index/show"
  resources :recipes do
       collection do
      get :sample
    end
  end

  get "emailrecipe(/:id)(.:format)" => "recipes#email_recipe" , :as => "email_recipe"
  
  get "store/index"
  get "store/show/:id(.:formate)" => "store#show", :as => "show"
  get "recipes/sample" => "recipes#products", :as => "sample"
  get "page/home"
  get "page/about"
  post "page/about"
  get "page/products(/:id)(.:format)" => "page#products", :as => "products"
  post "page/products"
  get "page/services"
  get "start/start"
  

#get "page/support" => "page#support" , :as => "support"
  
get "page/support(/:year(/:month))"  => "page#support", :as => "calendar"


  get "page/faq"
  get "page/contact_us"
  get "page/login"
  get "users/new"
  get "users/list"
  get "users/delete"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'start#start'

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
