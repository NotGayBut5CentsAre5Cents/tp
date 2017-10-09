Rails.application.routes.draw do
	#match '/sums', :to => 'sums#form', :via => [:get]
	#match '/filters', :to => 'filters#form', :via => [:get]
	#match '/intervals', :to => 'intervals#form', :via => [:get]
	#match '/lin_regressions', :to => 'lin_regressions#form', :via => [:get]
	post '/sums' => 'sums#calc'
	post '/filters' => 'filters#calc'
	post '/intervals' => 'intervals#calc'
	post '/lin_regressions' => 'lin_regressions#calc'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end