Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get'home', to:'home#index'
  post 'home', to:'home#masuk'
  delete 'logout', to:'home#logout'
  
  get'/proses', to:'home#proses'
  get'/materi', to: 'home#materi'
  get'/monitoring', to: 'home#monitoring'
  get'/join', to: 'home#join'

  get 'daftar', to:'users#daftar'
  post 'daftar', to:'users#tambah'
  
  #get 'reset_password', to:'users#cek_user'
  #get 'reset_password/:id',to:'users#reset_password'
  #post 'reset_password/:id',to:'users#reset_pw'

  get 'dashboard', to: 'student#dashboard'
  get 'book', to: 'student#book'
  get 'simulasi', to: 'student#simulasi'
  get 'perkembangan', to: 'student#perkembangan'
  
  get 'setting', to: 'student#setting'
  get 'edit_data/:id', to: 'users#edit', as: :user #edit data user
  post 'edit_data/:id', to: 'users#update'
  delete 'edit_data/:id', to: 'users#delete' #delete user

end
