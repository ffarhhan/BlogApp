Rails.application.routes.draw do
  get 'post/show'

  get 'post/new'
  get 'post/edit'
  post 'update' => "post#update"

  root 'post#show'
  post '/delete_post' => "post#delete_post"
  post '/create_post' => "post#create_post"
  get '/api_data' => "post#api_data_for_frontend"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
