Rails.application.routes.draw do
  post 'performer/:id/update' => "performer#update"
  post 'performer/:id/destroy' => "performer#destroy"
  get 'performer/:id/edit' => "performer#edit"
  post 'performer/create' => "performer#create"
  get '/' => "home#top"
  get 'performer/index' => "performer#index"
  get 'performer/new' => "performer#new"
  get 'performer/:id' => "performer#show"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
