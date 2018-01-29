Rails.application.routes.draw do
  namespace :admin do
    resources :comments
    resources :posts
    resources :users
    resources :people

    root to: "comments#index"
  end

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
