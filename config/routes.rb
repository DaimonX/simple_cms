Rails.application.routes.draw do
  # get 'pages/index'

  # get 'pages/show'

  # get 'pages/edit'

  # get 'pages/delete'

  # get 'section/index'

  # get 'section/show'

  # get 'section/edit'

  # get 'section/delete'

  # get 'section_controller/index'

  # get 'section_controller/show'

  # get 'section_controller/edit'

  # get 'section_controller/delete'

  # get 'pages_controller/index'

  # get 'pages_controller/show'

  # get 'pages_controller/edit'

  # get 'pages_controller/delete'

  # get 'subjects/index'

  # get 'subjects/show'

  # get 'subjects/new'

  # get 'subjects/edit'

  # get 'subjects/delete'

  root 'demo#index'
  #get 'demo/index'

  match ':controller(/:action(/:id))', :via => [:get, :post]

  # resources :zombies do
  #   resources :weapons do
  #     put :toggle_condition, on: :member
  #     put :reload, on: :member
  #   end
  # end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  get '/subjects/alert', to: 'subjects#alert', as: 'subjects_alert'
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
