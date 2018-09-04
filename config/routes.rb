Rails.application.routes.draw do
  resources :contacts

  resources :blogs do
    collection do
      post :confirm
    end
  end
  get '/blogs', to: 'blogs#index'
  get '/stocks', to: 'stocks#index'
  resources :blogs
end

