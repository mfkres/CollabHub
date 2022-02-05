Rails.application.routes.draw do
  root to: 'pages#index'

  devise_for :users

  # /login redirects user to the devise/sessions/new.html.erb file which is the login page
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

end
