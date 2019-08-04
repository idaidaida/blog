Rails.application.routes.draw do
  devise_for :accounts, controllers:{ 
    :registrations => 'accounts/registrations', #登録用のコントローラ    
    :sessions => 'accounts/sessions' #ログイン用のコントローラ 
    }
    devise_scope :account do
      root to: "devise/sessions#new"
    end

    resources :entries do
      resources :comments
    end
end
