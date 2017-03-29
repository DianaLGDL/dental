class CitaController < ApplicationController
  def index
  	   HTTParty::Basement.default_options.update(verify: false)
      urlstring_to_get ='https://uteyourcode.000webhostapp.com/appApi/public/cita/getAll'
    result = HTTParty.get(urlstring_to_get.to_str)
     @cita = JSON.parse(result)
  end

  def new
   
  end

  def create
    HTTParty::Basement.default_options.update(verify: false)
     urlstring_to_post ='https://uteyourcode.000webhostapp.com/appApi/public/cita/post'
    folio = params[:Folio]
    fechaProgramada = params[:cita][:Fecha_Programada]
    horaProgramada = params[:cita][:Hora_Programada ]
    motivo = params[:cita][:Motivo]
    servicioID = params[:cita][:Servicio_ID]   
    pacienteID = params [:cita][:Paciente_ID]
    result = HTTParty.post(urlstring_to_post.to_str, 
    :body => {:Fecha_Programada => fechaProgramada ,
      :Hora_Programada => horaProgramada,
      :Motivo => motivo,
      :Servicio_ID => servicioID,
      :Paciente_ID=>id }.to_json,
    :headers => {'Content-Type' => 'application/json'} ) 

     begin
     data = JSON.parse(result)
     if data['response'] == 'true' then 
       redirect_to "/cita/new" , notice: "Error, al ingresar los datos "
     else
       redirect_to "/cita/index", notice: "Se a registrado Correctamente"
     
     end    
  rescue JSON::ParserError => e 
  end 
  end


  def destroy
  end
end

