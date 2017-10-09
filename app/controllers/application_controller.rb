class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session
	def CSVRead(file)
		CSV.parse(file.read, converters: :numeric)              
	end
end
