Rails.application.routes.draw do
  post '/api-keys', to: 'api_keys#create'
  delete '/api-keys', to: 'api_keys#destroy'
  get '/api-keys', to: 'api_keys#index'
  resources:country do
    resources:state do
      resources:resort
    end
  end
end
