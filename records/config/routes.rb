Rails.application.routes.draw do
	  resources :records, expect: [:delete, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
