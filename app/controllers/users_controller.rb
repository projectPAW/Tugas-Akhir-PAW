class UsersController < ApplicationController
	def index
		@user = User.all
	end
	
	#---------------------------------------------------------------------------------
	def daftar
		@user = User.new
		@jurusan = ['IPA', 'IPS']
	end

	def tambah
		@user = User.new(user_params)
		if @user.save
			redirect_to daftar_path, notice: ' data berhasil dsimpan'
		else
			redirect_to daftar_path
		end
	end
	#---------------------------------------------------------------------------------

	def username
		#x = params[:id]
		#@user = User.new
	end

	def reset_password
		@users = User.all
		@user = User.find(params[:id])
	end

	def reset_pw
		@user = User.find(params[:id])
		
		if 	@user.update(password: params[:password])
			render plain: "berhasil"
			#redirect_to 'login'
		else 
			render plain: "gagal"
			#redirect_to 'reset'
		end
	end
	#---------------------------------------------------------------------------------

	def update
	end

	def delete	
	end

	private
	def user_params #method menyimpan data
		params.require(:user).permit(:noinduk, :nama, :jenkel, :kelas, :jurusan, :sekolah, :username, :password)
	end

	def reset_passw
		params.require(:user).permit(:password)
	end
end