PipelineApi::Application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :periods, only: [:show, :create]
  end
end
