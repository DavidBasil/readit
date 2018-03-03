Rails.application.routes.draw do
	
  get 'tags/show'

  get 'users/show'

	root "stories#index"
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

	resource :session
	resources :users
	resources :tags

	resources :stories do
		collection do
			get "bin"
		end
		resources :votes
	end
end
