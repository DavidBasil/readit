Rails.application.routes.draw do
	
  get 'users/show'

	root "stories#index"
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

	resource :session
	resources :users

	resources :stories do
		collection do
			get "bin"
		end
		resources :votes
	end
end
