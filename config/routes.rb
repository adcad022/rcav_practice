Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:NUMBER", { :controller => "calculations", :action => "square"})
  get("/square_root/:NUMBER", { :controller => "calculations", :action => "squareroot"})
  get("/random/:MIN/:MAX", { :controller => "calculations", :action => "random"})
  get("/payment/:apr/:years/:principal", { :controller => "calculations", :action => "payment"})
end
