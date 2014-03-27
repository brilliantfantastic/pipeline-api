PipelineApi::Application.routes.draw do
  namespace :api do
    resources :periods, only: [:show, :create]
  end
end
