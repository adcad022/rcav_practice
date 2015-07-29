class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def square
  	@number = params["NUMBER"].to_i
  	@output = @number ** 2 
  	render("square.html.erb")
  end
  def squareroot
  	@number = params["NUMBER"].to_i
	@squareroot = Math.sqrt(@number)
	render("squareroot.html.erb")
  end

  def random
  	@min = params["MIN"].to_i
  	@max = params["MAX"].to_i
  	r = Random.new
  	@rrandom = rand(@min..@max)
	render("random.html.erb")
  end

  def payment	

  	@apr = params[:apr].to_f / 100  
    @years = params[:years].to_i
    @principal = params[:principal].to_f
    rate = @apr / 100 / 12
    nper = @years * 12
    @payment = (rate * @principal)/(1 - (1 + rate)**-nper)
  	render("payment.html.erb")
  end
end
