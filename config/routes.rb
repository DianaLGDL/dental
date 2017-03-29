Rails.application.routes.draw do
  
  get 'cita/index'

  get 'cita/new'

  get 'cita/create'

  get 'cita/destroy'

  get 'infyc/sobren'

  get 'infyc/contacto'

  post 'cita/create'

  post  'cita/update'

  get 'antecedente/new'

  post 'antecedente/create'

  get 'paciente/new'

  get 'paciente/edit'

  get 'paciente/index'

  post 'paciente/create'

  post 'paciente/update'

  get 'modrec/pagrec'

  get 'modrec/histrec'

  get 'modadm/pagadm'

  get 'modadm/histadm'

 
  resources :login
  root 'welcome#index'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
