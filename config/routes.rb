Rails.application.routes.draw do

	resources :stories do
		resources :votes
	end
end
