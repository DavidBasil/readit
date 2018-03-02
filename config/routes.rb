Rails.application.routes.draw do
	
	root "stories#index"
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

	resource :session

	resources :stories do
		collection do
			get "bin"
		end
		resources :votes
	end
end
