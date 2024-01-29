Rails.application.routes.draw do
  get 'admin_dashboard/index'
  devise_for :admins
  
  devise_scope :admins do 
    # get '/admins/sign_out' => 'devise/sessions#destroy' 
    get '/admin', to: 'admin_dashboard#index'
    get '/admin_industry', to: 'industry#industry'
    post '/admin_industry', to: 'industry#create'
    get '/admin_institution', to: 'institution#institution'
    post '/admin_institution', to: 'institution#create'
    get '/admin_motor', to: 'motor#motor'
    post '/admin_motor', to: 'motor#create'
    get '/admin_education', to: 'education#education'
    post '/admin_education', to: 'education#create'
    get '/admin_plant', to: 'plant#plant'
    post '/admin_plant', to: 'plant#create'
    get '/admin_product', to: 'product#product'
    post '/admin_product', to: 'product#create'
    get '/admin_service', to: 'service#service'
    post '/admin_service', to: 'service#create'
    get '/admin_architecture', to: 'architecture#architecture'
    post '/admin_architecture', to: 'architecture#create'
    get '/admin_study', to: 'study#study'
    post '/admin_study', to: 'study#create'
    get '/admin_guideline', to: 'guideline#guideline'
    post '/admin_guideline', to: 'guideline#create'
    get '/admin_project', to: 'project#project'
    post '/admin_project', to: 'project#create'
    get '/admin_business', to: 'business#business'
    post '/admin_business', to: 'business#create'
    get '/admin_blog', to: 'blog#blog'
    post '/admin_blog', to: 'blog#create'
    get '/admin_contact', to: 'contact#contact'
    get '/industry/destroy/:id', to: 'industry#destroy'
    get '/institution/destroy/:id', to: 'institution#destroy'
    get '/motor/destroy/:id', to: 'motor#destroy'
    get '/education/destroy/:id', to: 'education#destroy'
    get '/plant/destroy/:id', to: 'plant#destroy'
    get '/product/destroy/:id', to: 'product#destroy'
    get '/service/destroy/:id', to: 'service#destroy'
    get '/architecture/destroy/:id', to: 'architecture#destroy'
    get '/study/destroy/:id', to: 'study#destroy'
    get '/guideline/destroy/:id', to: 'guideline#destroy'
    get '/project/destroy/:id', to: 'project#destroy'
    get '/business/destroy/:id', to: 'business#destroy'
    get '/blog/destroy/:id', to: 'blog#destroy'
    # get '/admins/sign_out', to: 'sessions#destroy'

    
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
  get "/contact",to: "contact#index"
  get "/aboutus", to: "aboutus#index"
  get "/industry",to: "industry#index"
  get "/institution",to: "institution#index"
  get "/motor",to: "motor#index"
  get "/education",to: "education#index"
  get "/plant",to: "plant#index"
  get "/product",to: "product#index"
  get "/service",to: "service#index"
  get "/architecture",to: "architecture#index"
  get "/study",to: "study#index"
  get "/guideline",to: "guideline#index"
  get "/project",to: "project#index"
  get "/business",to: "business#index"
  get "/blog",to: "blog#index"
  post '/contact', to: 'contact#create'
  get '/testimonie', to: 'testimonie#index'
  get '/gallery', to: 'gallery#index'
  

end
