Rails.application.routes.draw do
  devise_for :accounts, controllers:{ 
    :registrations => 'accounts/registrations', #登録用のコントローラ    
    :sessions => 'accounts/sessions' #ログイン用のコントローラ 
    }
end
