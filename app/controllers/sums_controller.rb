class SumsController < ApplicationController
#	def form
#	end
	Col1 = 0
	def calc
		arr = CSVRead(params["file"])
		sum = 0
		arr.each do |n|
			if n[Col1].nil?
				sum += 0
			else
				sum += n[Col1]
			end
		end	
		render plain: "%.2f" % (sum).ceil
	end
end
