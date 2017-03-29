class PacienteController < ApplicationController
  def new
  end

  def edit

    @f =params[:ID]
    
  end

  def index
      HTTParty::Basement.default_options.update(verify: false)
      urlstring_to_get ='https://uteyourcode.000webhostapp.com/appApi/public/paciente/getAll'
    result = HTTParty.get(urlstring_to_get.to_str)
     @paciente = JSON.parse(result)
  end

  def create
     HTTParty::Basement.default_options.update(verify: false)
     urlstring_to_post ='https://uteyourcode.000webhostapp.com/appApi/public/paciente/post'
    nombre = params[:paciente][:Nombre]
    nombres = params[:paciente][:NombreS ]
    apellidop = params[:paciente][:ApellidoP]
    apellidom = params[:paciente][:ApellidoM]
    edad = params[:paciente][:Edad]
    sexo = params[:paciente][:Sexo]
    calle = params[:paciente][:Calle]
    numdomicilio = params[:paciente][:NumDomicilio]
    telefono = params[:paciente][:Telefono]
    movil = params[:paciente][:Movil]
    ocupacion = params[:paciente][:Ocupacion]
    estadocivil = params[:paciente][:EstadoCivil]
    result = HTTParty.post(urlstring_to_post.to_str, 
    :body => {:Nombre=> nombre ,:S_Nombre => nombres,:ApellidoP => apellidop,:ApellidoM => apellidom,:Edad => edad,:Sexo => sexo,:Calle=>calle,:NumDomicilio => numdomicilio,:Telefono =>telefono,:Movil=>movil,:Ocupacion=>ocupacion,:EstadoCivil=>estadocivil}.to_json,
    :headers => {'Content-Type' => 'application/json'} ) 
     begin
     data = JSON.parse(result)
     if data['response'] == 'true' then 
       redirect_to "/paciente/new" , notice: "Error, al ingresar los datos "
     else
       redirect_to "/paciente/index", notice: "Se a registrado Correctamente"
     
     end    
  rescue JSON::ParserError => e 
  end 
  end

  def update 
     HTTParty::Basement.default_options.update(verify: false)      
  urlstring_to_post ='https://uteyourcode.000webhostapp.com/appApi/public/paciente/put'
    folio = params[:id ]
    calle = params[:paciente][:Calle]
    numdomicilio = params[:paciente][:NumDomicilio]
    telefono = params[:paciente][:Telefono]
    movil = params[:paciente][:Movil]
    ocupacion = params[:paciente][:Ocupacion]
    estadocivil = params[:paciente][:EstadoCivil]
    result = HTTParty.post(urlstring_to_post.to_str, 
    :body => {:Folio=>folio,:Calle=>calle,:NumDomicilio => numdomicilio,:Telefono =>telefono,:Movil=>movil,:Ocupacion=>ocupacion,:EstadoCivil=>estadocivil}.to_json,
    :headers => {'Content-Type' => 'application/json'} ) 
     begin
     data = JSON.parse(result)
     if data['response'] == 'true' then 
      redirect_to "/paciente/index", notice: "Error, al ingresar los datos"
     else
      redirect_to "/paciente/edit", notice: "Se a Actualizado Correctamente"
     end  
  rescue JSON::ParserError => e  
  end  
  end
  
end
