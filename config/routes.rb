Rails.application.routes.draw do
  get '/betingelser', to: 'pages#betingelser'

  # session (non resources, controller only)
  get     '/login',   to: 'sessions#new', path: '/log_ind'
  post     '/log_ind',   to: 'sessions#create'
  delete   '/logout',   to: 'sessions#destroy', path: '/log_ud'

  # r esources:
  # harmless:
  resources :housing_types, except: [:destroy], path: '/indkvarteringer'
  resources :places, except: [:destroy], path: '/steder'
  resources :assignments, except: [:destroy], path: '/opgavetildelinger'
  resources :tickets, except: [:destroy],  path: '/billetter'
  resources :tasks, except: [:destroy], path: '/opgaver' do
    collection { post :import }
  end
  resources :activities, except: [:destroy], path: '/aktiviteter' do
    collection { post :import }
    member { post :toggle }
  end
  resources :people, except: [:new], path: '/deltagere'
  resources :ptypes, except: [:destroy]

  # potentially harmful
  resources :members, except: [:destroy], path: '/medlemmer' do
    collection do
      post :import
    end
    member do
      get 'email'
    end
  end
  resources :invoices, except: [:new, :edit, :create, :destroy, :update] do
    member do
      post 'pay'
    end
    collection do
      post 'callback'
    end
  end

  # andet
  root to: 'members#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
