require 'linear-regression'

class LinRegressionsController < ApplicationController
	Incomes_col = 0
    Col1 = 0
    def calc
        arr = CSVRead(params["file"])
        xs = (1..arr.length).to_a
        ys =  arr.map { |n| n[Incomes_col].to_i }
        linear = Regression::Linear.new(xs, ys)
        a = linear.slope
        b = linear.intercept
        render plain: ('%.6f' % a + "," + '%.6f' %  b).html_safe        
end
end
