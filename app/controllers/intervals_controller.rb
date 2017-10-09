class IntervalsController < ApplicationController
#	def form
#	end
	Income_cols = 0
	Succes_days = 30
	def calc
		arr = CSVRead(params["file"])
		incomes = arr.map { |n| n[Income_cols] }
      	@max_sum = incomes[0..Succes_days-1].inject(0, :+)
      	max_sum_index = 0;
      	for i in 0.. incomes.length - Succes_days
        	sum = 0;
        	for j in 0..Succes_days-1
          		sum += incomes[i+j]
        	end
        	if @max_sum < sum
          		@max_sum = sum
         		max_sum_index = i  
        	end 
      	end
    	render plain: "%.2f" % @max_sum.ceil        
	end
end
