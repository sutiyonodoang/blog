class DemosController < ApplicationController
  
  def index
  	#render(:action => 'hello' )
  	#render(:template => 'demos/index' )
  	#render('demos/hello')
  	#render('hello')
  	#redirect_to(:action => 'other_hello')
    #redirect_to("http://webmail.jurnas.com")
    #hello
    #other_hello
  end
  
  def hello
   	@array = [1,2,3,4,5]
    @id = params[:id].to_i
    @page = params[:page].to_i
    #render(:text => 'Hello everyone!')
  end

  def other_hello
  	render(:text => 'Hello everyone!')
  end

end
