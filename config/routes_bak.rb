Rails.application.routes.draw do
  # session (non resources, controller only)
	get 		'/login', 	to: 'sessions#new'
	post 		'/login', 	to: 'sessions#create'
	delete 	'/logout', 	to: 'sessions#destroy'
	
	#resources:
  # harmless:
	resources :housing_types, :except => [:destroy]
  resources :places, :except => [:destroy]
  resources :assignments, :except => [:destroy]
  resources :tickets, :except => [:destroy]
  resources :tasks, :except => [:destroy] do
		collection { post :import }
	end
  resources :activities, :except => [:destroy] do
    collection { post :import }
  end
  resources :people, :except => [:new] 
  resources :ptypes, :except => [:destroy]
	
	# potentially harmful
  resources :members, :except => [:destroy] do
    collection do 
			post :import 
		end
		member do
			get 'email'
		end
	end
  resources :invoices, :except => [:index, :new, :edit, :create, :destroy, :update] do
		member do
			post 'pay'
		end
		collection do
			post 'callback'
		end
	end
	
	
	#andet
	get '/betingelser', :to => redirect('/Betingelser.html')
  root to: "members#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
