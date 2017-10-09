require 'csv'
class WelcomeController < ApplicationController
	def index
	    if(params.has_key?('a') && params.has_key?('b'))
	     	@sum = params['a'].to_i + params['b'].to_i
	    end
	end
	
	def upload
		
	end
end
