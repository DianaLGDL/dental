class AntecedenteController < ApplicationController
  HTTParty::Basement.default_options.update(verify: false)
  def new
   
    @id =params[:id]
  end

  def create
  idp = params[:id]
  urlstring_to_post ='https://uteyourcode.000webhostapp.com/appApi/public/historialcliente/post'
    if params[:paciente][:Diabetes] == "1"then
  diabetes = true
else
  diabetes = false
end
if params[:paciente][:Colitis ] == "1"then
   colitis =  true
else
   colitis = false
end
if params[:paciente][:Cancer]  == "1" then
cancer = true
else
cancer = false
end
if params[:paciente][:ProblemaCardiaco]=="1"then
  problemacardiaco = true
else
  problemacardiaco = false
 end
if params[:paciente][:AltaPr] =="1"then
  altapr = true
else
  altapr = false
end
if params[:paciente][:BajaPr] == "1"then
  bajapr=true
else
  bajapr=false
end
if params[:paciente][:Epilepsia] == "1"then
epilepsia = true
else
  epilepsia= false
end
if params[:paciente][:Tuberculosis]  == "1"then
  tuberculosis = true
else
  tuberculosis = false
end
if params[:paciente][:Hepatitis] == "1"then
  hepatitis = true
else
  hepatitis = false
end
 if params[:paciente][:ProblemaRenal]  == "1"then
  problemarenal = true
else
  problemarenal = false
end
if params[:paciente][:Anemia] == "1" then
  anemia = true
else
  anemia = false
end
if params[:paciente][:ProblemaNervios] == "1" then
 problemasnervios = true
else
  problemasnervios = false
end
if params[:paciente][:Leucemia]  == "1" then
  leucemial = true
else
  leucemia = false
end
if params[:paciente][:Artritis]  == "1" then
  artritis = true
else
  artritis = false
end
if params[:paciente][:ProblemaCoagulacion] == "1" then
  problemacoagulacion = true
else
  problemacoagulacion = false
end
if params[:paciente][:DolorCabeza] == "1" then
  dolorcabeza = true
else
  dolorcabeza = false
end
if params[:paciente][:Tiroides] == "1" then
  tiroides = true
else
  tiroides = false
end
 if params[:paciente][:VIH] ==  "1" then
  vih = true
  else
   vih = false
 end
if params[:paciente][:Asma] ==  "1" then
  asma = true
else
  asma = false
end

if  params[:paciente][:ETS] ==  "1" then
  ets = true
else
  ets = false
end

if params[:paciente][:Sinusitis] ==  "1" then
  sinusitis = true
  else
    sinusitis = false
  end

  if params[:paciente][:Gastritis] ==  "1" then
    gastriris = true
  else
    gastriris = false
  end

    if params[:paciente][:Ulcera] ==  "1" then
      ulcera = true
    else
       ulcera = false
     end

     if params[:paciente][:Embarazo] ==  "1" then
      embarazo = true
    else
      embarazo = false
    end
    problemamedico = params[:paciente][:ProblemaMedico]
    alergico = params[:paciente][:Alergico]
    dependenciamedica = params[:paciente][:DependenciaMedica]
    
    result = HTTParty.post(urlstring_to_post.to_str,:body => {:Diabetes=> diabetes ,:Colitis => colitis,:Cancer => cancer,:Problema_Cardiaco=> problemacardiaco,:Alta_Presion => altapr,:Baja_Presion =>bajapr,:Epilepsia=>epilepsia,:Tuberculosis => tuberculosis,:Hepatitis =>hepatitis,:ProblemaRenal=>problemarenal,:Anemia=>anemia,:ProblemaNervios=>problemasnervios,:Leucemia=> leucemia,:Artritis=>artritis,:Problema_Coagulacion =>problemacoagulacion,:Dolor_Cabeza=>dolorcabeza,:Tiroides => tiroides,:VIH =>vih,:Asma=>asma,:ETS=>ets,:Sinusitis=>sinusitis,:Gastritis=>gastriris,:Ulcera=>ulcera,:Embarazo=>embarazo,:Problema_Medico=> problemamedico,:Alergico=>alergico,:Dependencia_Medica=>dependenciamedica,:PacienteID=>idp}.to_json,
    :headers => {'Content-Type' => 'application/json'} ) 
     begin
     data = JSON.parse(result)
     if data['response'] == 'true' then 
       redirect_to "/paciente/index" , notice: "Error, al ingresar los datos "
     else
       redirect_to "/paciente/new", notice: "Se a registrado Correctamente"
     end 
     rescue JSON::ParserError => e
    
    end   
     
end
end
