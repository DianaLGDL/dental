class LoginController < ApplicationController
 include HTTParty
 HTTParty::Basement.default_options.update(verify: false)

	def show
	end
  def create
  	@urlstring_to_post ='https://uteyourcode.000webhostapp.com/appApi/public/administrador/get'
  	@Usuario = params[:user][:Usuario]
  	@Contraseña = params[:user][:Contraseña]
    result = HTTParty.post(@urlstring_to_post.to_str, 
    :body => {:user => @Usuario ,:pass => @Contraseña}.to_json,
    :headers => {'Content-Type' => 'application/json'} )
   
     
     begin
      data = JSON.parse(result)
     redirect_to "/modadm/pagadm", notice: ""
  rescue JSON::ParserError => e
    redirect_to "/login/new" , notice: "Error favor de revisar Password o Usuario."
  end
  end

end
