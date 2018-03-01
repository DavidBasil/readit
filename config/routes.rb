Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

	resource :session

	resources :stories do
		resources :votes
	end
end
