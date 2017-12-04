class UsersController < ApplicationController
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
	#----------------------------------------------------------------------------------
	def edit #fungsi edit akun
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to setting_path
		else
			redirect_to setting_path
		end
	end
	#----------------------------------------------------------------------------------
	def delete #fungsi delete akun
		@user = User.find(params[:id])
		if @user.destroy
			session[:user_id] = nil
			redirect_to home_path
		else
			redirect_to setting_path
		end 
	end
	#----------------------------------------------------------------------------------
	private
	def user_params #method menyimpan data
		params.require(:user).permit(:noinduk, :nama, :jenkel, :kelas, :jurusan, :sekolah, :username, :password)
	end
end