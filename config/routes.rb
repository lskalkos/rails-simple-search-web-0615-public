Rails.application.routes.draw do
  get '/search', to: 'search#index'

  get '/', to: 'welcome#index'

  resources :words, only: [:index, :show]

end
