PipelineApi::Application.routes.draw do
  resources :periods, only: [:show, :create]
end
