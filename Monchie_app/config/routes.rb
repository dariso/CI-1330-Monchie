Rails.application.routes.draw do

  devise_for :users, :controllers => {:registrations => "my_devise/registrations"}

  get 'carrito/index'

  get 'carrito/pagoOrden'	

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'
  

  get 'restaurantes/selRestaurante'

  get 'productos/selProductos'
  
  get 'productos_vendidos/verCarrito'

  get 'ordens/crearOCargarOrden'

  get 'ordens/cambioModoRetiro'

  get 'ordens/finalizarOrden'

  get 'ordens/cambiaEstadoFinOrden'

  resources :productos,:restaurantes,:usuario_clientes,:estados,:ordens,:facturas
  resources :productos_vendidos, shallow: true do
    resources :productos
  end
  resources :users, shallow: true do
    resources :usuario_clientes
  end
 
   root :to => "static_pages#home"

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
