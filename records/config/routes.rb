Rails.application.routes.draw do
	resources :records, only: [:index, :new, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
