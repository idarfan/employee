Employee::Application.routes.draw do
  resources :student_regedships

  resources :regeds

  resources :student_graduatedships

  resources :graduateds

  resources :stafflogins do |stafflogin|
    collection do
      get :login
      post :stafflogin
      get  :stafflogout
    end    
  end

  resources :orders

  resources :student_noticeships

  resources :notices

  resources :students do |student|
    collection do
      get :money
      get :show_money
      get :student_id_check
      get :new_view
      get :new_view1
    end
  end
  resources :student_been2otherships

  resources :been2others

  resources :beeeothers

  resources :student_incomelevelships

  resources :incomelevels

  resources :student_mostneedships

  resources :mostneeds

  resources :student_improveships

  resources :student_howuknowusships

  resources :howuknowus

  resources :student_howcanimproveships

  resources :howcanimproves

  resources :student_frequentmagships

  resources :frequentmags

  resources :student_weeklyusageships

  resources :weeklyusages

  resources :student_mostimportchoiceships

  resources :mostimportchoices

  resources :student_whylearnships

  resources :students

  resources :posts

  resources :boards

  resources :studentinfo_why_learnships

  resources :whylearns

  resources :studentinfofront_studentinfoships

  resources :studentinfofront_studeninfoships

  resources :studentinfos

  resources :studentinfofronts

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
