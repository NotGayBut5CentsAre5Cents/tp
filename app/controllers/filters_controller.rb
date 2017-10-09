class FiltersController < ApplicationController
#	def form
#	end
	Col2 = 1
	Col3 = 2
	def calc
		arr = CSVRead(params["file"])   
		render plain: "%.2f" % (arr.inject(0) {|sum, n| sum + (!n[Col3].nil? ? (n[Col3] % 2 == 1 ? n[Col2] : 0) : 0)}).ceil
	end
end
